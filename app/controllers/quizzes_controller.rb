class QuizzesController < ApplicationController	
	def index
		@quizzes = Quiz.first(20)
	end

	def new
		@quiz = Quiz.new
	end

	def create
		quiz = Quiz.new(parse_post_params)
		if quiz.save
			redirect_to quizzes_path
		else
			render action :new
		end
	end

	def update
	end

	def destroy
		@quiz = Quiz.find(params[:id])
		@quiz.delete_remote_pic
		@quiz.destroy
		redirect_to quizzes_path
	end

	def edit
	end

	def uptoken
		render json: { uptoken: QiniuApi.food_uptoken }
	end

	private

	def parse_post_params
		choices = {}
		(0..3).each do |i|
			choices[params["quiz_choices_#{i}"]] = params["quiz_choices_correct_#{i}"].present? if params["quiz_choices_#{i}"].present?
		end
		params[:quiz].merge!({ choices:  choices })
		params[:quiz].permit(:level, :picture, { :choices => choices.keys })
	end

end