class CreateActivitySensors < ActiveRecord::Migration
  def change
    create_table :activity_sensors do |t|
      t.string :name
      t.string :mqtt_topic
      t.boolean :is_internal
      t.boolean :is_enabled
      t.string :active_payload
      t.string :quiet_payload

      t.timestamps null: false
    end
  end
end
