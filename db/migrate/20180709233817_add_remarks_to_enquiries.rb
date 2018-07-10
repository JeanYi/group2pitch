class AddRemarksToEnquiries < ActiveRecord::Migration[5.2]
  def change
  	add_column :enquiries, :remarks, :text 
  end
end
