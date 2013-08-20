class CreateCallcenterMsgs < ActiveRecord::Migration
  def change
    create_table :callcenter_msgs do |t|
      t.references :callcenter
      t.string :msg_code

      t.timestamps
    end
    add_index :callcenter_msgs, :callcenter_id
  end
end
