ActiveAdmin.register DoorSensor do
  permit_params :name, :mqtt_topic, :is_internal, :is_enabled
end
