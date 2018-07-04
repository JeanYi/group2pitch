class AddClientsToEnquiries < ActiveRecord::Migration[5.2]
  def change
  	add_reference :enquiries, :clients
  end
end
