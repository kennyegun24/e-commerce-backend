# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
category1 = Category.create(name: 'shoes', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680568079/cld-sample-5.jpg')
category2 = Category.create(name: 'Gadgets', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680800798/accessories_bagbqs.jpg')
category3 = Category.create(name: 'Home Appliances', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680800798/appliances_an1xju.jpg')
store1 = Store.create(store_name: 'Musa stores', email: 'musa@gmail.com', password: '12345678', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680800798/store_lhso32.jpg')
store2 = Store.create(store_name: 'Digital stores', email: 'digits@gmail.com', password: '12345678', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680800901/store2_vcatz3.jpg')
store3 = Store.create(store_name: 'Clement stores', email: 'clement@gmail.com', password: '12345678', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680800900/store3_o5ey59.jpg')
store4 = Store.create(store_name: 'Tochi Stores', email: 'tochi@gmail.com', password: '12345678', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680800994/store6_i7zbvc.jpg')
store5 = Store.create(store_name: 'Vicky Stores', email: 'vicky@gmail.com', password: '12345678', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680800994/store5_hmpjzu.jpg')

product1 = Product.create(name: 'Iphone 14pro max', size: '14inhs', color: 'blue', price: '720', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680779023/iphone_jcmivw.jpg', details:'Is in very good condition', description: 'Beautiful camera and performance', store: store2, category: category2)

product2 = Product.create(name: 'Apple watch', size: '15inhs', color: 'red', price: '680', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680779023/apple_watch2_opg9qa.jpg', details:'Fairly used iphone', description: 'Beautiful camera and adequate performance', store: store1, category: category2)

product3 = Product.create(name: 'Samsung galaxy a40', size: '6.0inhs', color: 'Gold', price: '340', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680878376/ssamsung_a20_jonqhn.jpg', details:'Is in perfect condition', description: 'Very new', store: store2, category: category2)

product4 = Product.create(name: 'Infinix hot 5pro', size: '7inhs', color: 'blue', price: '500', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680878376/infinix_zy3qbn.jpg', details:'Is in very good condition', description: 'Beautiful camera okay performance', store: store3, category: category2)

product5 = Product.create(name: 'Iphone 14pro max', size: '14inhs', color: 'blue', price: '720', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680778775/OIP_jah9en.jpg', details:'Is in very good condition', description: 'Beautiful camera and performance', store: store4, category: category2)

product6 = Product.create(name: 'Iphone 14pro max', size: '14inhs', color: 'blue', price: '720', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680878376/iphone14_wkxepi.jpg', details:'Is in very good condition', description: 'Beautiful camera and performance', store: store1, category: category2)

product7 = Product.create(name: 'Wall socket', size: '5inhs', color: 'blue', price: '720', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680779023/wall_socket_n6gv5k.jpg', details:'Is in very good condition', description: '6 Ports and 2 usb spaces', store: store4, category: category3)

product8 = Product.create(name: 'Nike air 2', size: '14inhs', color: 'blue', price: '720', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680568079/cld-sample-5.jpg', details:'Is in very good condition', description: 'Better performance', store: store1, category: category1)

product9 = Product.create(name: 'Jordan air', size: '14inhs', color: 'blue', price: '720', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680568061/samples/ecommerce/shoes.png', details:'Is in very good condition', description: 'Better running and performance', store: store1, category: category1)

product10 = Product.create(name: 'Gucci bag', size: '24UK', color: 'black', price: '230', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680568065/samples/ecommerce/leather-bag-gray.jpg', details:'Is in very good condition', description: 'Beautifully looking', store: store4, category: category1)

product11 = Product.create(name: 'Nike air', size: '14inhs', color: 'Multi', price: '300', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680878376/nike_ruqvfn.jpg', details:'Is in very good condition', description: 'Beautifully looking and comfortable', store: store2, category: category1)

product12 = Product.create(name: 'Coffee maker', size: '14inhs', color: 'Black', price: '900', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680878376/coffee_uzyjmw.jpg', details:'Is in very good condition', description: 'Best performance', store: store4, category: category3)

product13= Product.create(name: 'Water heater', size: '14inhs', color: 'Black', price: '750', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680878376/water_heater_qjhmlm.jpg', details:'Is in very good condition', description: 'Best performance', store: store3, category: category3)

product14 = Product.create(name: 'Electric heater', size: '14inhs', color: 'Black', price: '250', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680878376/electric_heater_pm3hxb.jpg', details:'Is in very good condition', description: 'Best performance', store: store3, category: category3)

product15 = Product.create(name: 'Electric lamp', size: '14inhs', color: 'Black', price: '250', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680779023/lamp_zy1qwp.jpg', details:'Is in very good condition', description: 'Best performance', store: store3, category: category3)

product16 = Product.create(name: 'Electric lamp', size: '14inhs', color: 'Black', price: '250', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680779023/lamp_zy1qwp.jpg', details:'Is in very good condition', description: 'Best performance', store: store3, category: category3)

product17 = Product.create(name: 'Electric lamp', size: '14inhs', color: 'Silver', price: '300', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680779023/lamp_zy1qwp.jpg', details:'Is in very good condition', description: 'Best performance', store: store5, category: category3)
product18 = Product.create(name: 'Fridge', size: '14inhs', color: 'Silver', price: '250', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680882681/fridge_u5uzgv.jpg', details:'Is in very good condition', description: 'Best performance', store: store5, category: category3)
product19 = Product.create(name: 'Television', size: '14inhs', color: 'Black', price: '250', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680882681/tv_jzaykh.jpg', details:'Is in very good condition', description: 'Best performance', store: store5, category: category3)
product20 = Product.create(name: 'New Balance', size: '14inhs', color: 'Brown', price: '250', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680882681/new_baalance_dhlhjr.jpg', details:'Is in very good condition', description: 'Best performance', store: store5, category: category1)
product21 = Product.create(name: 'Jordan 4', size: '14inhs', color: 'Multi', price: '250', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680882681/jordan4_pyhqw5.jpg', details:'Is in very good condition', description: 'Best performance', store: store5, category: category1)
product22 = Product.create(name: 'Samsung fold', size: '14inhs', color: 'Black', price: '250', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680882681/samfold_cbwfeo.jpg', details:'Is in very good condition', description: 'Best performance', store: store5, category: category2)
product23 = Product.create(name: 'Laptop', size: '14inhs', color: 'Silver', price: '250', image: 'https://res.cloudinary.com/drfqge33t/image/upload/v1680882681/laptop_oxbywq.jpg', details:'Is in very good condition', description: 'Best performance', store: store5, category: category2)