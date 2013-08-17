class CreateCdns < ActiveRecord::Migration
  def change
    create_table :cdns do |t|
      t.references :callcenter
      t.string :extension

      t.timestamps
    end
    add_index :cdns, :callcenter_id
  end
end
