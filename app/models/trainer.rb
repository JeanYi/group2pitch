class Trainer < ApplicationRecord
	has_secure_password
	enum competency: [:nil, :leadership, :programming, :motivation, :teambuilding]
	has_many :listings

end

