class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.date :date, null: false
      t.string :name, null: false
      t.references :track, foreign_key: true

      t.timestamps
    end
  end
end
