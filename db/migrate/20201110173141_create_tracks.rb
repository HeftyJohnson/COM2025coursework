class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.integer :laps, null: false
      t.float :lapLength, null: false
      t.float :raceLength, null: false

      t.timestamps
    end
  end
end
