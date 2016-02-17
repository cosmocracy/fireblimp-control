ActiveAdmin.register ActivitySensorEvent do
  index do
    column "Activity Sensor" do |event|
      event.activity_sensor.name
    end
    column "Activity Timestamp", :created_at
  end
end