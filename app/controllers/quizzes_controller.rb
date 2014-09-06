class QuizzesController < ApplicationController	
	def index
		@quizzes = Quiz.includes(:response).first(20)
	end

	def new
    @quiz = Quiz.new
	end

	def create
    puts "============"
    puts params
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def uptoken
  	render json: { uptoken: QiniuApi.food_uptoken }
  end
end