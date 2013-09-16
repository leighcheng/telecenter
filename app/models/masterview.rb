class Masterview < ActiveRecord::Base
	set_table_name "masterviews"
	attr_accessible :name, :extension, :dn

	def self.search(search)
		if search
		  if search =~ /\w+/i
		    where('name LIKE ? OR extension LIKE ? OR dn LIKE ? ', "%#{search}%", "%#{search}%", "%#{search}%")
		  end
		else
		  scoped
		end
	end 

end