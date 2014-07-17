User.destroy_all
Item.destroy_all
Collection.destroy_all
Tag.destroy_all

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
    clothing_type: "t-shirt",
    picture: open("http://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/T-Shirt_mind_the_gap.jpg/906px-T-Shirt_mind_the_gap.jpg"),
    collection: collections[0]
  },
  {

    id:SecureRandom.uuid,
    color: "blue",
    clothing_type: "jacket",
    picture: open("http://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Nike_Brazil_CBF_N98_Men%27s_Soccer_Track_Jacket_front.JPG/576px-Nike_Brazil_CBF_N98_Men%27s_Soccer_Track_Jacket_front.JPG"),
    collection: collections[1]
  }
])

Tag.create([
  {
    id: SecureRandom.uuid,
    favorite: true,
    rating: "5",
    other: "Worn at the 1969 Winter Xmas Extravaganza",
    items: items
  },

  {
    id:SecureRandom.uuid, 
    favorite: false,
    rating: "2",
    other: "Worn during my time in the gulag",
    items: items
  }
])

