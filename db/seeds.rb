# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
trainer = [
	["Jack", "Beanstalk", "jack@hotmail.com", "01234", "123", "Leadership", "Teacher", "nil", "nil", 2600000000],
	["Jill", "Pussy", "jill@hotmail.com", "01234", "123", "Leadership", "Teacher", "nil", "nil", 2600000000],
	["James", "Rocket", "james@hotmail.com", "01234", "123", "Programming", "Tech Genius", "nil", "nil", 2600000000],
	["Jessie", "Rocket", "jessie@hotmail.com", "01234", "123", "Programming", "Tech Genius", "nil", "nil", 2600000000],
	["Ash", "Dispersed", "ash@hotmail.com", "01234", "123", "Motivation", "Speaker", "nil", "nil", 2600000000],
	["Brock", "Stoned", "brock@hotmail.com", "01234", "123", "Motivation", "Speaker", "nil", "nil", 2600000000],
	["Misty", "Wet", "misty@hotmail.com", "01234", "123", "Teamwork", "CEO of previous company", "nil", "nil", 2600000000],
	["Pikachu", "Pikapika", "pikachu@hotmail.com", "01234", "123", "Teamwork", "CEO of previous company", "nil", "nil", 2600000000],
]

client = [
	["Hanzo", "Shimada", "Shimada Clan", "CEO", "hanzo@hotmail.com", "123", "01234", "normal"],
	["Genji", "Shimada", "Shimada Clan", "Janitor", "genji@hotmail.com", "123", "01234", "normal"],
	["Winston", "Gorilla", "Moon & Co.", "Mascot", "winston@hotmail.com", "123", "01234", "normal"],
	["Tracer", "Lena", "Zipzap Co.", "Salesgirl", "tracer@hotmail.com", "123", "01234", "normal"],
	["Mercy", "Angela", "HND Limited", "CEO", "mercy@hotmail.com", "123", "01234", "normal"],
	["Hammond", "Hamster", "Wrecking Ball & Friends", "Mascot", "hammond@hotmail.com", "123", "01234", "normal"],
	["Mei", "Day", "Hell", "Satan", "mei@hotmail.com", "123", "01234", "normal"],
	["Nicholas", "Ong", "NEXT Academy", "Boss", "nicholasowh@hotmail.com", "123", "01234", "normal"]
]

enquiry = [
	["Motivational", "Programming", 1000,""]

]

listing = [
	["KlCC", ""]
]

static_listing = [
	["KLCC", "Motivational Speech", "2000", 20, "May-August", "5 Years Working Experience", "Managers and above", "Motivational" ]
	["KLCC", "Programming", "1000", 20, "April-May", "No working experience required", "Open to employees of all levels", "Programming" ]
	["Pavillion", "Spiritual", "4000", 40, "May-August", "No working experience required", "Open to employees of all levels", "Spiritual" ]
	["KLCC", "Motivational Speech", "3000", 20, "May-August", "5 Years Working Experience", "Managers and above", "Motivational" ]
	["KLCC", "Programming", "500", 10, "August-September", "No working experience required", "Open to employees of all levels", "Programming" ]
	["Pavillion", "Spiritual", "4000", 40, "September-January", "No working experience required", "Open to employees of all levels", "Spiritual" ]
	["KLCC", "Motivational Speech", "2000", 20, "January-March", "5 Years Working Experience", "Managers and above", "Motivational" ]
	["KLCC", "Programming", "2500", 25, "March-May", "No working experience required", "Open to employees of all levels", "Programming" ]
	["Pavillion", "Spiritual", "4000", 20, "May-August", "No working experience required", "Open to employees of all levels", "Spiritual" ]
]



trainer.each do |first_name, last_name, email, phone_number, password, skills, prior_experience, birthday, start_date, rate_per_day|
	Trainer.create(first_name: first_name, last_name: last_name, email: email, phone_number: phone_number, password: password, skills: skills, prior_experience: prior_experience, start_date: start_date, rate_per_day: rate_per_day)	
end

client.each do |first_name, last_name, name_of_company, designation, email, password, phone_number, role|
	Client.create(first_name: first_name, last_name: last_name, name_of_company: name_of_company, designation: designation, email: email, password: password, phone_number: phone_number, role: role)	
end

enquiry.each do |subject_one, subject_two, budget, start_date, end_date, venue, client_id, listing_id|
	Enquiry.create(subject_one: subject_one, subject_two: subject_two, budget: budget, start_date: start_date, end_date: end_date, venue: venue, client_id: client_id, listing_id: listing_id)
end

listing.each do |name, short_desc, long_desc, start_date, end_date, venue, client_id, trainer_id, enquiry_id, payment_status|
	Listing.create(name: name, short_desc: short_desc, long_desc: long_desc, start_date: start_date, end_date: end_date, venue: venue, client_id: client_id, trainer_id: trainer_id, enquiry_id: enquiry_id, payment_status: payment_status)
end

static_listing.each do |venue, description, budget, pax, duration, requirement, audience, title|
	StaticListing.create(venue: venue, description: description, budget: budget, pax: pax, duration: duration, requirement: requirement, audience: audience, title: title)
end