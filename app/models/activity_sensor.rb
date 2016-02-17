class ActivitySensor < ActiveRecord::Base
  has_many :activity_sensor_events
end
