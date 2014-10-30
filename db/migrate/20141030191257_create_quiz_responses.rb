class CreateQuizResponses < ActiveRecord::Migration
  def change
    create_table :quiz_responses do |t|
      t.belongs_to :quiz
      t.belongs_to :question
      t.belongs_to :answer
    end
  end
end
