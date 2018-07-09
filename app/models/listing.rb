class Listing < ApplicationRecord
	belongs_to :trainer ,optional:true
	belongs_to :client
	enum payment_status: [:unpaid, :paid]
end