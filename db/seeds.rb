# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.delete_all
Store.create! id: 1, name: "Harvey Mudd", mail: "harvey-furniture@example.com", encrypted_password: "AWS"


Item.delete_all
Item.create! id: 1, name: "Mason Chair", description: "A victorian era mason chair, softer than a cat's fur.", original_price: 125.0,
             current_price: 114.99, quantity: 5, store_id: 1
Item.create! id: 2, name: "Fauteauil ", description: "Fauteuil de bureau Siège de bureau en cuir mélangé et bois Mobilier de bureau.",
             original_price: 95, current_price: 85, quantity: 2, store_id: 1
Item.create! id: 3, name: "Triple Bunk Bed", description: "Extra fun for falling from the 3rd mattress.",
             original_price: 81.9, current_price: 78.9, quantity: 2, store_id: 1
Item.create! id: 4, name: "Banana Couch", description: "Yellow.Banana.Couch. Higher price cause yellow.", original_price: 13.37,
             current_price: 9001, quantity: 5, store_id: 1

Client.delete_all
Client.create! id: 1, email: "josh@mlh.io", encrypted_password: "leastbutnotlast"

Basket.delete_all
Basket.create! id: 1, code: 112233

