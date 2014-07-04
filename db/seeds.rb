User.destroy_all
Item.destroy_all
Collection.destroy_all
Tag.destroy_all

User.create([
  {
    id: SecureRandom.uuid,
    name: "Steve",
    last_name: "not Steve",
    email: "d@d.com"
  },

  {

    id:SecureRandom.uuid,
    name: "dude",
    email: "dude@dude.com",
    last_name: "notadude"
  }
])

Item.create([
  {
    id: SecureRandom.uuid

  },

  {

    id:SecureRandom.uuid

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
    color: "yellow",
    clothing_type: "shirt",
    event: "Xmas",
    favorite: true,
    function: "Casual",
    weather: "Winter",
    rating: "5",
    brand: "Gucii",
    other: "Worn at the 1969 Winter Xmas Extravaganza"

  },

  {

    id:SecureRandom.uuid, 
    color: "blue",
    clothing_type: "pants",
    event: "",
    favorite: false,
    function: "Formal",
    weather: "Spring",
    rating: "2",
    brand: "Leevi's",
    other: "Worn during my time in the gulag"

  }
])

