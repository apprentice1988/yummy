class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :picture
      t.hstore :choices

      t.timestamps
    end
  end
end
