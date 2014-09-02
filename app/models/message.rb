class Message < ActiveRecord::Base
	has_one :response, dependent: :destroy
	belongs_to :subscriber 
	after_create :create_response
	default_scope { order('create_time desc') }
end
