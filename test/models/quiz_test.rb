require "test_helper"

class QuizTest < ActiveSupport::TestCase

  def quiz
    @quiz ||= Quiz.new
  end

  def test_valid
    assert quiz.valid?
  end

end
