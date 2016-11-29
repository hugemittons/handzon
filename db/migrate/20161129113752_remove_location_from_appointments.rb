class RemoveLocationFromAppointments < ActiveRecord::Migration[5.0]
  def change
    remove_column :appointments, :location
  end
end
