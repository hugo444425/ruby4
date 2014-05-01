class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :game_date
      t.string :phase
      t.string :estado
      t.string :local_id
      t.string :visitante_id
      t.string :score
      t.string :winner
      t.string :looser
      t.boolean :tie
      t.string :group_id
      t.string :stadium

      t.timestamps
    end
  end
end
