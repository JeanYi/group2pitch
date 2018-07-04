class RemoveColumn < ActiveRecord::Migration[5.2]
  def up
  	remove_column :enquiries, :clients_id
  end
end
