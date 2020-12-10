class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.integer :titles, null: false
      t.integer :wins, null: false
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
