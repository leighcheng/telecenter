class CreateOutsidenumbers < ActiveRecord::Migration
  def change
    create_table :outsidenumbers do |t|
      t.references :callcenter
      t.string :dn

      t.timestamps
    end
    add_index :outsidenumbers, :callcenter_id
  end
end
