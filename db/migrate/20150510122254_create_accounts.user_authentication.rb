# This migration comes from user_authentication (originally 20121009010000)
class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :email, :null => false
      t.string :password_digest
      t.string :username, :null => false
      t.text :skills
      t.text :about 
      t.date :birthdate, :null => false 

      t.timestamps
    end

    add_index :accounts, [:email]
  end
end
