class Client < ApplicationRecord
	has_many :enquiries
	has_many :listings 
	has_secure_password
	enum role: [:normal, :admin]
end