class Weixin::MessagesController < Weixin::ApplicationController

	def receive
		if request.post?
			xml = Hash.from_xml request.body.read
			puts "==========#{parse_and_return_xml(xml)}"
			render xml: parse_and_return_xml(xml)
		else
			render text: params[:echostr]
		end
	end

	private

	def parse_and_return_xml xml
		type = xml['xml']['MsgType']
		data = xml['xml']
		message = "message_#{type}".camelize.constantize.cast(data)
		message.response.output
	end

end