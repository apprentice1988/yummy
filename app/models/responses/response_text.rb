class ResponseText < Response

	def output
		{
			MsgType: 'text',
			Content: content
		}.merge super
	end
end