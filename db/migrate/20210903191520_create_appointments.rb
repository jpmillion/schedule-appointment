class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
