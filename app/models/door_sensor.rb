class DoorSensor < ActiveRecord::Base
  has_many :door_sensor_events
end
