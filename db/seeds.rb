# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Photo.delete_all
Product.delete_all
User.delete_all

User.create(email: "miriam@codaisseurbnb.com", password: "secret")
User.create(email: "ben@codaisseurbnb.com", password: "secret")

# Products
product1 = Product.create(name: "Mike Ike minion box", price: 2.50)
product2 = Product.create(name: "Cheetos crunchy flaming hot", price: 3.95)
product3 = Product.create(name: "Mike Ike minion box", price: 2.50)

# Photos
photo1 = Photo.create(product_id: 1, remote_image_url: "http://res.cloudinary.com/dwbu8qlck/image/upload/v1476792780/gijie7dmqgeibbxowlit.jpg")
photo2 = Photo.create(product_id: 2, remote_image_url: "http://res.cloudinary.com/dwbu8qlck/image/upload/v1476790018/jukegf0w3hlr0wjwo3ub.jpg")
photo3 = Photo.create(product_id: 3, remote_image_url: "http://res.cloudinary.com/dwbu8qlck/image/upload/v1476790019/kkjbhjbh1x4jcq5edmdf.png")
