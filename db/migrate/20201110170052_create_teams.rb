class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :country
      t.integer :budget
      t.integer :staff

      t.timestamps
    end
  end
end
