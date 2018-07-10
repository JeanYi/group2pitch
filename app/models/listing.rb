class Listing < ApplicationRecord
	belongs_to :trainer ,optional:true
	belongs_to :client
	belongs_to :enquiry
	enum payment_status: [:unpaid, :paid]
end