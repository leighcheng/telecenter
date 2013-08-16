class CreateCallcenters < ActiveRecord::Migration
  def change
    create_table :callcenters do |t|
      t.string :name
      t.integer :priority
      t.boolean :networked

      t.timestamps
    end
  end
end
