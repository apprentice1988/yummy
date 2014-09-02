class EventSubscribe < Event
	def self.cast(data)
		self.create(
			to_user_name: data['ToUserName'],
			from_user_name: data['FromUserName'],
			create_time: DateTime.strptime(data['CreateTime'], '%s'),
			subscriber_id: Subscriber.find_or_create_by(name: data['FromUserName']).id
			)
	end

	private

	def create_response
		response = ::ResponseText.create(
			to_user_name: from_user_name,
			from_user_name: to_user_name,
			create_time: Datetime.now,
			content: "欢迎订阅猴子是个吃货公众号， 我们提供最新美食信息跟您",
			event_id:  self.id
			)
		response.save
	end

end