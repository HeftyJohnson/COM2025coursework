class DriverIssue < ActiveRecord::Migration[5.2]
  def change
    rename_column :positions, :drivers_id, :driver_id
  end
end
