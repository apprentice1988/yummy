class MessageText < Message
	# <xml>
  # <ToUserName><![CDATA[及子龙]]></ToUserName>
  # <FromUserName><![CDATA[胖子]]></FromUserName> 
  # <CreateTime>1348831860</CreateTime>
  # <MsgType><![CDATA[text]]></MsgType>
  # <Content><![CDATA[this is a test]]></Content>
  # <MsgId>1234567890123456</MsgId>
  # </xml>

  # <ToUserName><![CDATA[toUser]]></ToUserName>
	# <FromUserName><![CDATA[fromUser]]></FromUserName>
	# <CreateTime>12345678</CreateTime>
	# <MsgType><![CDATA[text]]></MsgType>
	# <Content><![CDATA[你好]]></Content>

  # curl -X POST -d '<run><ToUserName>及子龙</ToUserName></run>' localhost:3000/weixin/messages
  def initialize(xml)
  	data = xml['xml']
  	@to_user_name = data['ToUserName']
  	@from_user_name = data['FromUserName']
  	@create_time = DateTime.strptime(data['CreateTime'],'%s')
  	@content = data['Content']
  	@msgid = data['MsgId']
  end
end