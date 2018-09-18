# Contact.create!([
#   {first_name: "Kiley", last_name: "Armstrong", email: "kiley@gmail.com", phone_number: "3033033033", middle_name: nil, bio: nil},
#   {first_name: "Cindy", last_name: "Hassett", email: "cindy@gmail.com", phone_number: "630-605-0797", middle_name: nil, bio: nil},
#   {first_name: "Bob", last_name: "Roooooooarman", email: "carguy@yahoo.com", phone_number: "3030303030", middle_name: nil, bio: nil},
#   {first_name: "Bob", last_name: "Barker", email: "bobbybarks@hotmail.com", phone_number: "310-555-1234", middle_name: "Cornelius", bio: nil},
#   {first_name: "Kyle", last_name: "Hassett", email: "kyle@gmail.com", phone_number: "630-804-9012", middle_name: nil, bio: "I'm crazy!!"}
# ])

Group.create!([
                {name: "Family"},
                {name: "Business"},
                {name: "Out of Town"},
                {name: "Blacklisted"},
                {name: "School"}
              ])

group_ids = Group.pluck(:id)

Contact.all.each do |contact|
  sampled_ids = group_ids.sample(rand(2..4))

  sampled_ids.each do |group_id|
    ContactGroup.create!(contact_id: contact.id, group_id: group_id)
  end
end