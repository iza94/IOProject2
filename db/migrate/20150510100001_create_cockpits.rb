class CreateCockpits < ActiveRecord::Migration
  def change
    create_table :cockpits do |t|

      t.timestamps null: false
    end
  end
end
