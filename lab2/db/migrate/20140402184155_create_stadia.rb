class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :city
      t.date :construction_date
      t.integer :capacity
      t.string :picture

      t.timestamps
    end
  end
end
