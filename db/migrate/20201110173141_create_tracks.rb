class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :laps
      t.float :lapLength
      t.float :raceLength

      t.timestamps
    end
  end
end
