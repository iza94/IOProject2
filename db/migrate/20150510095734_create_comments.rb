class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :textfield
      t.string :title

      t.timestamps null: false
    end
  end
end
