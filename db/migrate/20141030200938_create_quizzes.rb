class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
