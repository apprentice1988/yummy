class Weixin::MessagesController < Weixin::ApplicationController
	#before_action :authentication

	def create
		doc = Nokogiri::XML(request.body.read)
		puts doc
	end

	private

	def authentication
		token = TOKEN
		str = [params[:timestamp].to_s, token, params[:nonce].to_s].sort.join
		sha = Digest::SHA1.hexdigest(str)
		sha = params[:signature]
	end
end