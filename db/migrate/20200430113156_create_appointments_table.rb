class CreateAppointmentsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.timestamps
    end
  end
end
