class QuizzesController < ApplicationController
	before_action :http_authenticate
	
	def index
		@quizzes = Quiz.all
	end
end