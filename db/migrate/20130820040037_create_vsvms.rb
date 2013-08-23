class CreateVsvms < ActiveRecord::Migration
  def change
    create_table :vsvms do |t|
      t.string :name
      t.string :dn

      t.timestamps
    end
  end
end
