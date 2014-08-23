class Message < ActiveRecord::Base
	has_one :response, dependent: :destroy
	belongs_to :subscriber 
end
