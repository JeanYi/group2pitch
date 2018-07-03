class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :name_of_company
    	t.string :designation
    	t.string :email
    	t.string :password_digest
    	t.string :phone_number

    	t.timestamps
    	


    end
  end
end
