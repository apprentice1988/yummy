class Response < ActiveRecord::Base
	belongs_to :message
	def output
		{
			ToUserName: to_user_name,
			FromUserName: from_user_name,
			CreateTime: create_time.to_i
		}
	end
end
