class CreateGlobalStates < ActiveRecord::Migration
  def change
    create_table :global_states do |t|
      t.boolean :armed
      t.datetime :last_armed
      t.datetime :last_disarmed
      t.boolean :arming
      t.boolean :delayed_entry
      t.datetime :last_delayed_entry
      t.boolean :silent_egress_ingress
      t.boolean :bedtime_mode
      t.datetime :last_authentication
      t.timestamps null: false
    end
  end
end
