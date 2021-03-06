# Create a main sample user.
User.create!(name: 'Example User',
              email: 'example@railstutorial.org',
              password: 'foobar',
              password_confirmation: 'foobar',
              admin: true)

# Genenrate a bunch of addtial users.
99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = 'password'
    User.create!(name: name,
                 email: email,
                 password: password,
                 password_confirmation: password)
end