class MessageText < Message
  after_create :create_response
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
  def self.cast(data)
    self.create(
    	to_user_name: data['ToUserName'],
    	from_user_name: data['FromUserName'],
    	create_time: DateTime.strptime(data['CreateTime'],'%s'),
    	content: data['Content'],
    	msgid: data['MsgId'],
      subscriber_id: Subscriber.find_or_create_by(name: data['FromUserName']).id
      )
  end

  private

  def create_response
    response = ::ResponseText.create(
      to_user_name: from_user_name,
      from_user_name: to_user_name,
      create_time: DateTime.now,
      content: '你是猴子请来的救兵吗?',
      message_id: self.id
      )
    response.save
  end
end