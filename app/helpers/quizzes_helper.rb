module QuizzesHelper
	def choice_correct_class correct
		correct == 'true' ? 'quiz_choice_correct' : ''
	end
end