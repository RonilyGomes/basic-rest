for i in 1..5
	Person.create({
		name: Faker::Name.name,
		email: Faker::Internet.free_email,
		nickname: Faker::StarWars.character,
		phone: Faker::PhoneNumber.cell_phone
	})
end
