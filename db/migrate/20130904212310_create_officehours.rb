class CreateOfficehours < ActiveRecord::Migration
  def change
    create_table :officehours do |t|
      t.string :name

      t.timestamps
    end
  end
end
