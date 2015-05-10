class CreateSnackWalls < ActiveRecord::Migration
  def change
    create_table :snack_walls do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
