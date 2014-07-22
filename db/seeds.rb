User.destroy_all
Collection.destroy_all

users = User.create([
  {
    id: SecureRandom.uuid,
    name: "Steve",
    last_name: "not Steve",
    email: "d@d.com",
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
    location: "London",
    user: users[0] 
  },
  {

    id:SecureRandom.uuid,
    location: "Hong Kong",
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
  }
])

Tag.create([
  {
    id: SecureRandom.uuid,
    name: "Worn at the 1969 Winter Xmas Extravaganza",
    item: items[0]
  },

  {
    id:SecureRandom.uuid,
    name: "Worn during my time in the gulag",
    item: items[0]
  },
    {
    id: SecureRandom.uuid,
    name: "sports",
    item: items[1]
  },
    {
    id: SecureRandom.uuid,
    name: "summer",
    item: items[2]
  }
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
