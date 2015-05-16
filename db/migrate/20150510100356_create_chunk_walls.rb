class CreateChunkWalls < ActiveRecord::Migration
  def change
    create_table :chunk_walls do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
