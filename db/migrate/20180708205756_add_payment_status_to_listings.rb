class AddPaymentStatusToListings < ActiveRecord::Migration[5.2]
  def change
  	add_column :listings, :payment_status, :integer, default:0
  end
end
