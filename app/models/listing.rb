class Listing < ApplicationRecord
	belongs_to :trainer
	belongs_to :client
end