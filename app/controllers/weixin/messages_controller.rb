class Weixin::MessagesController < Weixin::ApplicationController

	def receive
		if request.post?
			message = Hash.from_xml request.body.read

		else
			render text: params[:echostr]
		end
	end

	private

	def parse_xml xml
		type = xml['xml']['MsgType']
		message = "message_#{type}".camelize.constantize.new(xml)
	end

end