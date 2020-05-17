# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# assuming there is a user (user_id: 2)(luthier) vl1@m.com and a user (user_id: 3)(musician) vm1@m.com
Product.destroy_all
Medium.destroy_all

# Luthier.destroy_all
# Luthier.create(user_id: 2, description: 'Virtual Luthier 1')
# Musician.destroy_all
# Musician.create(user_id: 3, description: 'Virtual Musician 1')

for i in (1...20) do
    Product.create(name: "Guitar Product #{i.to_s}", category: 'Guitar', description: 'Progressive', luthier_id: 4, base_price: 2500)
end

for i in (1...20) do
    Medium.create(name: "Medium #{i.to_s}", description: "Playthrough and Review #{i.to_s}", musician_id: 4, link: 'https://www.youtube.com/')
end 

# SubscribeMusician.create(user_id: 4, musician_id: 4)
# SubscribeLuthier.create(user_id: 4, luthier_id: 4)
