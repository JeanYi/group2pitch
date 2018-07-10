class AddNameToListings < ActiveRecord::Migration[5.2]
  def change
  	  add_column :listings, :name_two, :string 
  end
end
