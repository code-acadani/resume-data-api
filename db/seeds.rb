# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do 
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
  Student.create(
    first_name: first_name, 
    last_name: last_name,
    email: "#{first_name.downcase}.#{last_name.downcase}@gmail.com", 
    phone_number: Faker::PhoneNumber.cell_phone, 
    short_bio: Faker::PrincessBride.quote, 
    linkedIn_url: Faker::SiliconValley.url, 
    twitter_handle: Faker::Pokemon.name, 
    personal_blog_website_url: Faker::SiliconValley.url, 
    online_resume_url: Faker::SiliconValley.url,
    github_url: Faker::SiliconValley.url,
    photo: Faker::Fillmurray.image 
    )
end 

50.times do
  Education.create(
    student_id: rand(1...20),
    start_date: Faker::Date.backward(800),
    end_date: Faker::Date.backward(400),
    degree:Faker::Job.education_level,
    university_name: Faker::University.name,
    details: Faker::StarWars.quote
    )
end 

100.times do
  Experience.create(
    student_id: rand(1...20),
    start_date: Faker::Date.backward(800),
    end_date: Faker::Date.backward(400),
    job_title:Faker::Job.position,
    company_name: Faker::Company.name,
    details: Faker::StarWars.quote
    )
end 

100.times do
  Skill.create(
    student_id: rand(1...20),
    name: Faker::Job.key_skill
    )
end 

50.times do
  Capstone.create(
    student_id: rand(1...20),
    name: Faker::HarryPotter.spell,
    description: Faker::FamousLastWords.last_words,
    url: Faker::Avatar.image,
    screenshot: Faker::Company.logo
    )
end 





