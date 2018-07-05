class AddRoleToClients < ActiveRecord::Migration[5.2]
  def change
  	add_column :clients, :role, :integer, default:0
  end
end
