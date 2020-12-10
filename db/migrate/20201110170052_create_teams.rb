class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :country, null: false
      t.integer :budget, null: false
      t.integer :staff, null: false

      t.timestamps
    end
  end
end
