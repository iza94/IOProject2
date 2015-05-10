class CreateSnacks < ActiveRecord::Migration
  def change
    create_table :snacks do |t|
      t.string :title
      t.string :URL

      t.timestamps null: false
    end
  end
end
