User.destroy_all
Collection.destroy_all


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

# item = Item.create!([
#     id: SecureRandom.uuid,
#     color: "TEST COLOR",
#     favorite: false,
#     clothing_type: "TEST t-shirt",
#     picture: File.open(File.join(Rails.root, '/public/images/camo.jpg')),
#     collection: collections[0]])

# src = File.join(Rails.root, "public/images/camo.jpg")
# src_file = File.new(src)
# item.picture = src_file
# item.save!

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
    id: SecureRandom.uuid,
    color: "black",
    favorite: false,
    clothing_type: "t-shirt",
    picture: File.open(File.join(Rails.root, '/public/images/camo.jpg')),
    collection: collections[0]
  },


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
