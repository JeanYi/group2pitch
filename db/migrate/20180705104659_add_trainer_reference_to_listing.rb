class AddTrainerReferenceToListing < ActiveRecord::Migration[5.2]
  def change
  	add_reference :listings, :trainer, foreign_key: true
  end
end