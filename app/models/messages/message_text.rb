class MessageText < Message
	# <xml>
  # <ToUserName><![CDATA[及子龙]]></ToUserName>
  # <FromUserName><![CDATA[胖子]]></FromUserName> 
  # <CreateTime>1348831860</CreateTime>
  # <MsgType><![CDATA[text]]></MsgType>
  # <Content><![CDATA[this is a test]]></Content>
  # <MsgId>1234567890123456</MsgId>
  # </xml>

  # curl -X POST -d '<run><ToUserName>及子龙</ToUserName></run>' localhost:3000/weixin/messages
end