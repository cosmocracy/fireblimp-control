DoorSensorEvent.delete_all

DoorSensor.delete_all
DoorSensor.create(:name => 'Front Door', :is_entry => true, :is_enabled => true, :mqtt_topic => '/fireblimp/out/16')
DoorSensor.create(:name => 'Back Door', :is_entry => true, :is_enabled => true, :mqtt_topic => '/fireblimp/out/18')
DoorSensor.create(:name => 'Back Door (secondary)', :is_entry => true, :is_enabled => true, :mqtt_topic => '/fireblimp/out/22')
DoorSensor.create(:name => 'Front Gate', :is_entry => false, :is_enabled => true, :mqtt_topic => '/fireblimp/out/15')
DoorSensor.create(:name => 'Back Gate', :is_entry => false, :is_enabled => true, :mqtt_topic => '/fireblimp/out/13')

ActivitySensorEvent.delete_all

ActivitySensor.delete_all
ActivitySensor.create(:name => 'Laser 1', :is_internal => true, :is_enabled => true, :mqtt_topic => '/fireblimp/out/37', :quiet_payload => '1', :active_payload => '0')