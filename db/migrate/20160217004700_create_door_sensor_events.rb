class CreateDoorSensorEvents < ActiveRecord::Migration
  def change
    create_table :door_sensor_events do |t|
      t.boolean :curr_open
      t.integer :door_sensor_id

      t.timestamps null: false
    end
  end
end
