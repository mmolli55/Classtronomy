class AddCorrectToQuizResponse < ActiveRecord::Migration
  def change
    add_column :quiz_responses, :correct, :boolean
  end
end
