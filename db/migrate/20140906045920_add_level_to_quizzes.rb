class AddLevelToQuizzes < ActiveRecord::Migration
  def change
  	add_column :quizzes, :level, :integer
  end
end
