class Weixin::RequestsController < ApplicationController
	def authentication
		token = 1123
		str = [params[:timestamp], token, params[:nonce]].sort.join
		sha = Digest::SHA1.hexdigest(str)
		result = sha == params[:signature] ? params[:echostr] : false
		render text: result
	end
end