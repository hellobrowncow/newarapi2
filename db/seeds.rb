User.destroy_all
Item.destroy_all
Collection.destroy_all
Tag.destroy_all

User.create([
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

Item.create([
  {
    id: SecureRandom.uuid,
    color: "blue",
    clothing_type: "shirt",
    picture: ""

  },

  {

    id:SecureRandom.uuid,
    color: "red",
    clothing_type: "pants",
    picture: ""

  }
])

Collection.create([
  {
    id: SecureRandom.uuid,
    location: "London"

  },

  {

    id:SecureRandom.uuid,
    location: "Hong Kong"
  }
])

Tag.create([
  {
    id: SecureRandom.uuid,
    favorite: true,
    rating: "5",
    other: "Worn at the 1969 Winter Xmas Extravaganza"
  },

  {
    id:SecureRandom.uuid, 
    favorite: false,
    rating: "2",
    other: "Worn during my time in the gulag"
  }
])

