class AddListingToEnquiries < ActiveRecord::Migration[5.2]

  def change
    remove_column :enquiries, :listings_id, :bigint
  end
end
