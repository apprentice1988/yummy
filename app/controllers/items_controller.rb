class ItemsController < ApplicationController
	def index
		@items = Item.limit(9)
	end
end
