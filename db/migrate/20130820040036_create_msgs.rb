class CreateMsgs < ActiveRecord::Migration
  def change
    create_table :msgs do |t|
      t.string :code
      t.text :txt

      t.timestamps
    end
  end
end
