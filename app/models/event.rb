class Event < ActiveRecord::Base
	has_one :response, dependent: :destroy
	belongs_to :subscriber
	default_scope { order("create_time desc") }
	after_create :create_response
end
