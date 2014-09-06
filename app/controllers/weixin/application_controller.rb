class Weixin::ApplicationController < ApplicationController
	skip_before_filter  :http_authenticate
	
	TOKEN = '1123'
	before_action :authentication

	private

	def authentication
		token = TOKEN
		str = [params[:timestamp].to_s, token, params[:nonce].to_s].sort.join
		sha = Digest::SHA1.hexdigest(str)
		sha = params[:signature]
	end
end