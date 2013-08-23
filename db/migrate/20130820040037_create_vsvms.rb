class CreateVsvms < ActiveRecord::Migration
  def change
    create_table :vsvms do |t|
      t.string :code
      t.string :dn

      t.timestamps
    end
  end
end
