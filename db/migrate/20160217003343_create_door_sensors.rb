class CreateDoorSensors < ActiveRecord::Migration
  def change
    create_table :door_sensors do |t|
      t.string :name
      t.boolean :is_entry
      t.boolean :is_enabled
      t.string :mqtt_topic

      t.timestamps null: false
    end
  end
end
