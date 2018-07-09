class AddListingToEnquiries < ActiveRecord::Migration[5.2]
  def self.up
  	change_table :enquiries do |t|
  		t.references :listing
  	end
  end

  def change
    remove_column :enquiries, :listings_id
  end
end
