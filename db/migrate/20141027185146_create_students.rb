class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :remember_token
      t.boolean :admin, default: false
      t.timestamps
    end
    add_index :students, :email, unique: true
    add_index :students, :remember_token
  end
end
