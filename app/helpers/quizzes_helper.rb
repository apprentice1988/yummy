module QuizzesHelper
	def level_options
		(1..5).map{|x| "<option>#{x}</option>"}.join.html_safe
	end
end