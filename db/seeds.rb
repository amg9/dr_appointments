5.times do
  doctor = Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
  5.times do
    user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )
    Appointment.create(
      date: Faker::Date.forward(days: 900),
      kind: Faker::Verb.base
    )
  end
end