for i in 1..3
	User.create({
		email: Faker::Internet.free_email,
		password: Faker::Internet.password(8)
	}).contacts.create!(
    [
      {
        name: Faker::Artist.name,
        email: Faker::Internet.free_email,
        phone: Faker::PhoneNumber.cell_phone,
        description: Faker::Lorem.paragraph
      },
      {
        name: Faker::Artist.name,
        email: Faker::Internet.free_email,
        phone: Faker::PhoneNumber.cell_phone,
        description: Faker::Lorem.paragraph
      },
      {
        name: Faker::Artist.name,
        email: Faker::Internet.free_email,
        phone: Faker::PhoneNumber.cell_phone,
        description: Faker::Lorem.paragraph
      },
    ]
  )
end
