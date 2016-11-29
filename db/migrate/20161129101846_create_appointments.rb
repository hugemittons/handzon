class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :date_time
      t.references :user, foreign_key: true
      t.references :massage, foreign_key: true

      t.timestamps
    end
  end
end
