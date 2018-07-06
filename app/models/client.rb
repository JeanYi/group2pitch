class Client < ApplicationRecord
	has_many :enquiries
	has_secure_password
end