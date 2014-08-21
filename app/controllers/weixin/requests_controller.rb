class Weixin::RequestsController < ApplicationController
	def authentication
		str = [params[:timestamp], params[:token], params[:nonce]].sort.join
		sha = Digest::SHA1.hexdigest(str)
		result = sha == params[:signature] ? params[:echostr] : false
		render text: result
	end
end