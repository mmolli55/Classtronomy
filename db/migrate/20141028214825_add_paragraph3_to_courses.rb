class AddParagraph3ToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :paragraph3, :text
  end
end
