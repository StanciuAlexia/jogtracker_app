# Create a main user.
User.create!(name: "Example User",
            email: "example@email.com",
            password: "bobita",
            password_confirmation: "bobita",
            admin: true)

# Create a main  manager user.
User.create!(name: "Manager User",
             email: "manager@example.com",
             password: "password",
             password_confirmation: "password",
             manager: true)

# Generate a bunch of additional users.
99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@email.com"
    password = "password"
    User.create!(name: name,
                email: email,
                password: password,
                password_confirmation: password)
end