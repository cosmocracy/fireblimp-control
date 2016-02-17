ActiveAdmin.register DoorSensorEvent do
  config.sort_order = 'id_desc'

  index do
    column "Door" do |event|
      event.door_sensor.name
    end
    column "Opened / Closed" do |event|
      event.curr_open ? "Opened" : "Closed"
    end
    column "Activity Timestamp", :created_at
    end
end
