class CreateCallcenterMsgs < ActiveRecord::Migration
  def change
    create_table :callcenter_msgs do |t|
      t.references :callcenter
      t.references :msg

      t.timestamps
    end
    add_index :callcenter_msgs, :callcenter_id
    add_index :callcenter_msgs, :msg_id
  end
end
