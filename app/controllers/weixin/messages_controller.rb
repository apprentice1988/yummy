class Weixin::MessagesController < Weixin::ApplicationController
	skip_before_action :http_authenticate, only: :receive

	def index
		@messages = Message.all
	end

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
		if type == 'event'
			event = "event_#{data['Event']}".camelize.constantize.cast(data)
			event.response.output
		else
			message = "message_#{type}".camelize.constantize.cast(data)
			message.response.output
		end
	end

end