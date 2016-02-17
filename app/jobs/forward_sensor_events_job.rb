require 'mqtt'

class ForwardSensorEventsJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    Thread.new do
      while true
        logger.info "Starting background MQTT handler"
        begin
          MQTT::Client.connect('192.168.0.50') do |c|
            c.get('/fireblimp/#') do |topic,message|
              logger.debug "MQTT: #{topic} => #{message}"
              s = DoorSensor.find_by_mqtt_topic(topic)
              DoorSensorEvent.create(:door_sensor => s, :curr_open => (message == '0')) if s
              s = ActivitySensor.find_by_mqtt_topic(topic)
              ActivitySensorEvent.create(:activity_sensor => s) if (s && s.active_payload == message)
            end
          end
        rescue
          logger.error "Error during MQTT handling: #{$!}; Pausing 30s and attempting reconnect"
        end
        sleep 30
      end
    end
  end
end
