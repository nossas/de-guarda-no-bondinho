require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

User.blueprint do
  name  { Faker::Name.name }
  email { Faker::Internet.email }
  phone { Faker::PhoneNumber.cell_phone }
end
