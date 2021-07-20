class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :in
      t.time :out
      t.time :lunch_start
      t.time :lunch_end
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
