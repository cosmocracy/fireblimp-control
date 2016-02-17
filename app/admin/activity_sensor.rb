ActiveAdmin.register ActivitySensor do
  permit_params :name, :mqtt_topic, :is_internal, :is_enabled, :active_payload, :quiet_payload
end
