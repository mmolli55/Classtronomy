class AddParagraph1ToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :paragraph1, :text
  end
end
