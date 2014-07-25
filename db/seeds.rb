User.destroy_all
Collection.destroy_all

item = Item.create!(name: "McDonald's")
src = File.join(Rails.root, "db/images/camo.jpg")
src_file = File.new(src)
restaurant.logo = src_file
restaurant.save!

users = User.create([
  {
    id: SecureRandom.uuid,
    name: "Albert",
    last_name: "Einstein",
    email: "albert@google.com",
    password: "1234",
    password_confirmation: "1234"
  },
  {

    id:SecureRandom.uuid,
    name: "dude",
    last_name: "notadude",
    email: "dude@dude.com",
    password: "4567",
    password_confirmation: "4567"
  }
])

collections = Collection.create([
  {
    id: SecureRandom.uuid,
    location: "Hong Kong",
    user: users[0] 
  },
  {

    id:SecureRandom.uuid,
    location: "London",
    user: users[0] 
  },
  {

    id:SecureRandom.uuid,
    location: "New York",
    user: users[0] 
  },
  {

    id:SecureRandom.uuid,
    location: "Sydney",
    user: users[0] 
  },
  {

    id:SecureRandom.uuid,
    location: "San Francisco",
    user: users[0] 
  }
])

items = Item.create([
  {
    id: SecureRandom.uuid,
    color: "black",
    favorite: false,
    clothing_type: "t-shirt",
    picture: open("http://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/T-Shirt_mind_the_gap.jpg/906px-T-Shirt_mind_the_gap.jpg"),
    collection: collections[0]
  },
  {

    id:SecureRandom.uuid,
    color: "blue",
    favorite: true,
    clothing_type: "jacket",
    picture: open("http://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Nike_Brazil_CBF_N98_Men%27s_Soccer_Track_Jacket_front.JPG/576px-Nike_Brazil_CBF_N98_Men%27s_Soccer_Track_Jacket_front.JPG"),
    collection: collections[1]
  },
  {
    id: SecureRandom.uuid,
    color: "blue",
    favorite: false,
    clothing_type: "t-shirt",
    picture: open("http://upload.wikimedia.org/wikipedia/commons/8/8c/Hawaiian_Shirt.jpg"),
    collection: collections[0]
  },
    {
    id: SecureRandom.uuid,
    color: "orange",
    favorite: true,
    clothing_type: "t-shirt",
    picture: open("https://yy1.staticflickr.com/8387/8624896117_83263d53ce_z.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "blue",
    favorite: false,
    clothing_type: "jeans",
    picture: open("http://media.topshop.com/wcsstore/TopShop/images/catalog/02G27EMDT_large.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "yellow",
    favorite: false,
    clothing_type: "skirt",
    picture: open("http://upload.wikimedia.org/wikipedia/commons/1/19/Long_evening_skirt.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "white polka dot",
    favorite: false,
    clothing_type: "skirt",
    picture: open("http://upload.wikimedia.org/wikipedia/commons/c/cb/Polkadotskirt.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "pink",
    favorite: false,
    clothing_type: "shirt",
    picture: open("https://www.ebuybit.com/product_img1/40001306.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "plaid",
    favorite: false,
    clothing_type: "shirt",
    picture: open("https://c2.staticflickr.com/8/7172/6615424081_9164bce882_z.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "plaid",
    favorite: false,
    clothing_type: "skirt",
    picture: open("https://farm2.staticflickr.com/1431/701586733_1dabc5b5e4_z.jpg?zz=1"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "plaid",
    favorite: false,
    clothing_type: "shirt",
    picture: open("http://www.ralphllauren.org/images/RL-Polo-shirt-S-XXL-5.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "brown",
    favorite: false,
    clothing_type: "t-shirt",
    picture: open("http://fc06.deviantart.net/fs70/f/2010/161/d/c/Ubuntu_Coffee_Cafe_T_Shirt_by_papandtc.png
"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "white",
    favorite: false,
    clothing_type: "t-shirt",
    picture: open("http://media.tsharks.in/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/g/o/google-white-men-tshirt.jpg
"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "green",
    favorite: false,
    clothing_type: "t-shirt",
    picture: open("https://farm5.staticflickr.com/4097/4905829548_254a52e139_b.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "light green",
    favorite: false,
    clothing_type: "shirt",
    picture: open("https://www.hivispricesaver.com/images/g2410.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "blue",
    favorite: false,
    clothing_type: "t-shirt",
    picture: open("http://fc09.deviantart.net/fs71/i/2010/294/0/4/ponyo_t_shirt_by_arteclair-d3184vu.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "camoflage",
    favorite: false,
    clothing_type: "pants",
    picture: open("http://cdn.champbell.net/images/www.motorhelmets.com/media/products/agv-sport/2010-07/apparel-agv-sport-street-pants-men-kevlar-cargo-assault-camo.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "brown",
    favorite: false,
    clothing_type: "pants",
    picture: open("http://www.indianajones.dk/Webside/Billeder/Indy-side/Gear/pants%20taupe.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "khaki",
    favorite: false,
    clothing_type: "pants",
    picture: open("http://i.stpost.com/carhartt-cargo-pocket-work-pants-for-men-in-field-khaki~p~6031t_04~1500.2.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "grey",
    favorite: false,
    clothing_type: "sweat pants",
    picture: open("http://images.footlocker.com/pi/79431064/zoom/nike-k.o.-therma-fit-fleece-pants-mens"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "blue",
    favorite: false,
    clothing_type: "skirt",
    picture: open("http://i.stpost.com/marmot-horizon-ski-pants-waterproof-insulated-for-women-in-black~p~5949c_02~1500.2.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "pink",
    favorite: false,
    clothing_type: "jacket",
    picture: open("http://www.wigglestatic.com/product-media/5360080132/salomon-bonatti-wp-jacket-m-matador-x-l32850500-2013.jpg?w=1000&h=1000&a=7"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "orange",
    favorite: false,
    clothing_type: "jacket",
    picture: open("http://a248.e.akamai.net/f/248/9086/10h/origin-d5.scene7.com/is/image/adidasgroup/D80170_01?wid=500&hei=500&fmt=jpeg&qlt=92,0&resMode=sharp2&op_usm=1.1,0.5,1,0"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "grey",
    favorite: false,
    clothing_type: "coat",
    picture: open("http://www.coatpant.com/wp-content/uploads/2013/02/M-65-Field-Jacket.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "black",
    favorite: false,
    clothing_type: "tank top",
    picture: open("http://cdn.champbell.net/images/garbochic.files.wordpress.com/2011/03/black-tank-top.jpg"),
    collection: collections[0]
  },
  {
    id: SecureRandom.uuid,
    color: "gray",
    favorite: false,
    clothing_type: "tank top",
    picture: open("http://www.beertees.com/media/catalog/product/cache/8/image/5e06319eda06f020e43594a9c230972d/c/o/coo-0166/Coors-Light-Coors-Light-Mens-Tank-Top-Grey-Logo-Shirt.jpg"),
    collection: collections[0]
  }

])

Tag.create([
  {
    id: SecureRandom.uuid,
    name: "cool",
    item: items[0]
  },

  {
    id:SecureRandom.uuid,
    name: "summer",
    item: items[0]
  },
    {
    id: SecureRandom.uuid,
    name: "sports",
    item: items[1]
  },
    {
    id: SecureRandom.uuid,
    name: "work",
    item: items[2]
  },
    {
    id: SecureRandom.uuid,
    name: "casual",
    item: items[6]
  },
    {
    id: SecureRandom.uuid,
    name: "comfy",
    item: items[8]
  },
    {
    id: SecureRandom.uuid,
    name: "donate",
    item: items[9]
  },
    {
    id: SecureRandom.uuid,
    name: "matches my green socks",
    item: items[10]
  },
    {
    id: SecureRandom.uuid,
    name: "only worn last summer",
    item: items[11]
  },
    {
    id: SecureRandom.uuid,
    name: "spring",
    item: items[12]
  },
    {
    id: SecureRandom.uuid,
    name: "fall",
    item: items[13]
  },
    {
    id: SecureRandom.uuid,
    name: "makes me happy!!",
    item: items[14]
  },
    {
    id: SecureRandom.uuid,
    name: "good to lounge in",
    item: items[15]
  },
    {
    id: SecureRandom.uuid,
    name: "hard to match",
    item: items[16]
  },
])

Rating.create([
  {
    id: SecureRandom.uuid,
    user: users[0],
    item: items[0],
    rank: 4
  },
  {
    id: SecureRandom.uuid,
    user: users[0],
    item: items[1],
    rank: 3
  },
  {
    id: SecureRandom.uuid,
    user: users[1],
    item: items[0],
    rank: 5
  },
  {
    id: SecureRandom.uuid,
    user: users[1],
    item: items[1],
    rank: 1
  }
])
