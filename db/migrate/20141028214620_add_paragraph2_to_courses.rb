class AddParagraph2ToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :paragraph2, :text
  end
end
