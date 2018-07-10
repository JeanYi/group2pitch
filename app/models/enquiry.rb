class Enquiry < ApplicationRecord
	belongs_to :client
	has_many :listings
end
