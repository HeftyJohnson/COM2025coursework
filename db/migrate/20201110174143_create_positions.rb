class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.integer :pos, null: false
      t.references :drivers, foreign_key: true
      t.references :race, foreign_key: true

      t.timestamps
    end
  end
end
