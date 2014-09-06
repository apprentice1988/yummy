class Quiz < ActiveRecord::Base
	validates_presence_of :picture, :choices
end
