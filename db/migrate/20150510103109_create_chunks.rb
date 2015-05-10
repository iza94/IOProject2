class CreateChunks < ActiveRecord::Migration
  def change
    create_table :chunks do |t|
      t.string :title
      t.string :textfield

      t.timestamps null: false
    end
  end
end
