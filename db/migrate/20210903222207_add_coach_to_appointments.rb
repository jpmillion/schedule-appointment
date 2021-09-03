class AddCoachToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :coach, null: false, foreign_key: true
  end
end
