# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Luthier.destroy_all
Musician.destroy_all

User.create(email: "bcehmu@hotmail.com", password: "123123")
User.create(email: "hao.bcehmu@gmail.com", password: "123123")
Luthier.create(user: User.where(email: "bcehmu@hotmail.com").first)
Musician.create(user: User.where(email: "hao.bcehmu@gmail.com").first)

Product.destroy_all
Medium.destroy_all

for i in (1...20) do
    Product.create(name: "Guitar Product #{i.to_s}", category: 'Guitar', description: 'Progressive', luthier_id: Luthier.first.id, base_price: 2500)
end

for i in (1...20) do
    Medium.create(name: "Medium #{i.to_s}", description: "Playthrough and Review #{i.to_s}", musician_id: Musician.first.id, link: 'https://www.youtube.com/')
end 

