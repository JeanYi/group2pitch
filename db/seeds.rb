# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
trainer = [
	["Jack", "Beanstalk", "jack@hotmail.com", "01234", "123", "Leadership", "Teacher", "nil", "nil", 2600],
	["Jill", "Pussy", "jill@hotmail.com", "01234", "123", "Leadership", "Teacher", "nil", "nil", 2600],
	["James", "Rocket", "james@hotmail.com", "01234", "123", "Programming", "Tech Genius", "nil", "nil", 2600],
	["Jessie", "Rocket", "jessie@hotmail.com", "01234", "123", "Programming", "Tech Genius", "nil", "nil", 26000],
	["Ash", "Dispersed", "ash@hotmail.com", "01234", "123", "Motivation", "Speaker", "nil", "nil", 2600],
	["Brock", "Stoned", "brock@hotmail.com", "01234", "123", "Motivation", "Speaker", "nil", "nil", 2600],
	["Misty", "Wet", "misty@hotmail.com", "01234", "123", "Teamwork", "CEO of previous company", "nil", "nil", 2600],
	["Pikachu", "Pikapika", "pikachu@hotmail.com", "01234", "123", "Teamwork", "CEO of previous company", "nil", "nil", 2600]
]

client = [
	["Admin", "Admin", "Admin", "Admin", "admin@admin.com", "123", "0123456789", "admin"],
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
 	["Motivational", "Programming", "3000", "April", "May", "KLCC", 1],
       ["Programming", "Spiritual", "5000", "April", "May", "KLCC", 2],
      ["Motivational", "Programming", "6000", "May", "June" "Pavillion", 3],
      ["Programming", "Spiritual", "7000", "June", "July", "Pavillion",4],
       ["Spritual", "Programming", "5500", "August", "September", "KLCC", 5],
       ["Spiritual", "Motivational", "7500", "September", "October", "Pavillion", 6],
       ["Programming", "Spiritual", "6000", "October", "November", "KLCC", 7],
     ["Motivational", "Spiritual", "4000", "November", "December", "Pavillion", 8]
 ]

listing = [
	["Motivational Speech", "Training for motivating employees.", "Morale of the employees is crticical for an organisation and we provide trainining
    for employees which would allow them to stay focused during high leve situations.", "January", "February", "KLCC",1, 1, 1, "paid"],
      ["Programming", "Provide a 4 week introductory course on HTML and CSS.", "The ability to code is important especially in an era where technology
        is everywhere. Teaching your employees to code in HTML and CSS would provide them some basics in programming to able
        to produce beautiful and interactive websites", "February", "March", "Pavillion", 7, 7, 7, "paid"],
       ["Spiritual", "A holistic development of the human mind and pscyhe.", "A general camp for employees to learn how to be in touch with their spirtual side.
         Employees will be taught how to meditate and breathing exercises.", "March", "April", "KLCC", 3, 3, 3, "paid"],
         ["Motivational Speech", "Training for motivating employees.", "Morale of the employees is crticical for an organisation and we provide trainining
     for employees which would allow them to stay focused during high leve situations.", "April", "May", "Pavillion", 4, 4,4,  "unpaid"],
             ["Spiritual", "A holistic development of the human mind and pscyhe.","A general camp for employees to learn how to be in touch with their spirtual side.
          Employees will be taught how to meditate and breathing exercises.", "May", "June", "KLCC", 5, 5,5, "unpaid"],
         ["Programming", "Provide a 4 week introductory course on HTML and CSS.", "The ability to code is important especially in an era where technology
        is everywhere. Teaching your employees to code in HTML and CSS would provide them some basics in programming to able
         to produce beautiful and interactive websites", "June", "July", "Pavillion", 6, 6, 6, "unpaid"]
]

 static_listing = [
 	["KLCC", "Designed for senior executives around the must-have C-suite skills that research shows top recruiters are looking for, this revolutionary, state-of-the-art programme will help leaders step forward with confidence to make the transition into the executive suite.", "20000", 10, "May-August", "7 Years Working Experience", "Managers and above", "Leadership for C-Suites" ],
 	["Empire Damansara", "CConversational Intelligence is a highly innovative, science based program. It provides you with frameworks on how to leverage the power of neuroscience to establish an environment of trust and connection, activate the parts of the brain that trigger instant growth and innovation for your clients and create coaching conversations that lead to never before experienced levels of success and transformation. The program has been revolutionizing the coaching industry over the past 3 years. Conversational Intelligence® will open up a new lens for understanding and redefining what conversations are and how you can leverage them as a coach to spark transformation and change.", "5000", 20, "April-May", "No working experience required", "Open to employees of all levels", "Conversational Intelligence" ],
 	["Pavillion", "If team building and other offsite events are to offer value, their inclusion in an overall corporate structure of philosophies, values and practices is critical. The New Earth is about the process of supporting a work group to operate in a team-oriented environment that is characterized by such philosophies as shared purpose, shared values, shared vision, shared mission and a performance development system that enables people to grow both personally and professionally. It is ideal for organizations with a high mix of seniority in age, experience and competency.", "4000", 40, "May-August", "No working experience required", "Open to employees of all levels", "Teambuilding" ],
 	["One World Hotel", "Welcome to Leadership, Vision, and Organizational Culture. This module focuses on the fundamental role of leadership, vision, and organizational culture in the success of your community’s jail transition strategies. In this module, we offer a broader definition of leadership, one that fits the Transition from Jail to Community (TJC) model. For us, leaders are individuals, regardless of their position within an organization, who have the ability to provide the vision, leadership, and resources to empower people to go beyond what they thought they were capable of doing to build the organizational culture necessary to grow and sustain successful transition from jail to the community. ", "3000", 20, "May-August", "5 Years Working Experience", "Managers and above", "Organizational Culture" ],
 	["Westin", "The Human Library™ is designed to build a positive framework for conversations that can challenge stereotypes and prejudices through dialogue. The Human Library is a place where real people are on loan to readers. A place where difficult questions are expected, appreciated and answered.The Human Library or “Menneskebiblioteket” as it is called in Danish, was developed in Copenhagen in the spring of 2000 as a project for Roskilde Festival by Ronni Abergel and his brother Dany and colleagues Asma Mouna and Christoffer Erichsen.", "500", 10, "August-September", "No working experience required", "Open to employees of all levels", "Unconscious Bias" ],
 	["Hilton", "In this course, you'll deepen your understanding of unconscious biases, how they influence behavior, and how they impact us all. You'll also learn numerous actions you can take to help counter bias in your own work environment. This course begins with a brief introduction to unconscious bias. In the scenarios that follow, you'll explore bias and what you can do about it through video scenarios, interactive exercises and opportunities for reflection.", "4000", 40, "September-January", "No working experience required", "Open to employees of all levels", "Spiritual" ]
 ]

trainer.each do |first_name, last_name, email, phone_number, password, skills, prior_experience, birthday, start_date, rate_per_day|
	Trainer.create(first_name: first_name, last_name: last_name, email: email, phone_number: phone_number, password: password, skills: skills, prior_experience: prior_experience, start_date: start_date, rate_per_day: rate_per_day)	
end

client.each do |first_name, last_name, name_of_company, designation, email, password, phone_number, role|
	Client.create(first_name: first_name, last_name: last_name, name_of_company: name_of_company, designation: designation, email: email, password: password, phone_number: phone_number, role: role)	
end

enquiry.each do |subject_one, subject_two, budget, start_date, end_date, venue, client_id|
	Enquiry.create(subject_one: subject_one, subject_two: subject_two, budget: budget, start_date: start_date, end_date: end_date, venue: venue, client_id: client_id)
end

listing.each do |name, short_desc, long_desc, start_date, end_date, venue, client_id, trainer_id, enquiry_id, payment_status|
	Listing.create(name: name, short_desc: short_desc, long_desc: long_desc, start_date: start_date, end_date: end_date, venue: venue, client_id: client_id, trainer_id: trainer_id, enquiry_id: enquiry_id, payment_status: payment_status)
end

static_listing.each do |venue, description, budget, pax, duration, requirement, audience, title|
 	StaticListing.create(venue: venue, description: description, budget: budget, pax: pax, duration: duration, requirement: requirement, audience: audience, title: title)
 end