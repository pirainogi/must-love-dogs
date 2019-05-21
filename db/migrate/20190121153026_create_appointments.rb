class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :dog, foreign_key: true
      t.references :caregiver, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
