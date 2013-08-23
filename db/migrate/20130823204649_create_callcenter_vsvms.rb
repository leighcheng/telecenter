class CreateCallcenterVsvms < ActiveRecord::Migration
  def change
    create_table :callcenter_vsvms do |t|
      t.references :callcenter
      t.references :vsvm

      t.timestamps
    end
    add_index :callcenter_vsvms, :callcenter_id
    add_index :callcenter_vsvms, :vsvm_id
  end
end
