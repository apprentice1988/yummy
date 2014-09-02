class QuizzesController < ApplicationController	
	def index
		@quizzes = Quiz.includes(:response).first(20)
	end
end