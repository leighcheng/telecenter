class AddOfficeHoursToCallcenters < ActiveRecord::Migration
  def change
    add_column :callcenters, :office_hour, :string
  end
end
