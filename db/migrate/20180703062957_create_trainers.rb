class CreateTrainers < ActiveRecord::Migration[5.2]
def change
  	create_table :trainers do |t|
  	t.timestamps
  	t.string :image
  	t.string :first_name
  	t.string :last_name
  	t.string :email
  	t.string :phone_number
  	t.string :password_digest
  	t.string :skills
  	t.string :prior_experience
  	t.date :birthday
  	t.date :start_date
  	t.integer :rate_per_day
 	end
end
end
