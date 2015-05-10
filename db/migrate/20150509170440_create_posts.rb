class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :txtefile
      t.string :title

      t.timestamps null: false
    end
  end
end
