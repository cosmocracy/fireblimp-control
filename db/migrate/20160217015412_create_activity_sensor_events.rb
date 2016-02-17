class CreateActivitySensorEvents < ActiveRecord::Migration
  def change
    create_table :activity_sensor_events do |t|
      t.integer :activity_sensor_id

      t.timestamps null: false
    end
  end
end
