require 'open-uri'

module Food
	class AccessToken
		attr_reader :app_id, :app_secret

		def initialize
			@app_id = AppConfig.food['app_id']
			@app_secret = AppConfig.food['app_secret']
		end

		def token
			token = AppConfig.food['token'] || refresh
			valid_token?(token) ? token : refresh
		end

		def refresh
			token = JSON.load(token_url.open)['access_token']
			AppConfig.food['token'] = token
			AppConfig.food['token_expire_at'] = 2.hours.from_now.to_i
			token
		end

		private

		def valid_token? token
			token.present? && Time.now.to_i < AppConfig.food['token_expire_at']
		end

		def token_url
			uri = URI.parse('https://api.weixin.qq.com/cgi-bin/token')
			params = { grant_type: "client_credential", appid: @app_id, secret: @app_secret }
			uri.query = URI.encode_www_form(params)
			uri
		end
	end
end