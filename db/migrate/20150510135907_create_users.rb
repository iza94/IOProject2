class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digit
      t.string :avatar
      t.text :about
      t.text :skills

      t.timestamps null: false
    end
  end
end
