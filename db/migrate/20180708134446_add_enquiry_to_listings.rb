class AddEnquiryToListings < ActiveRecord::Migration[5.2]
  def change
  	 add_reference :listings, :enquiry, foreign_key: true

  end
end
