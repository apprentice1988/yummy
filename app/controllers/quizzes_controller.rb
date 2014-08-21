class QuizzesController < ApplicationController
	before_filter :http_authenticate
	
	def index
		@quizzes = Quiz.all
	end
end