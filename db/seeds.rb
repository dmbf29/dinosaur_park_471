puts "Destroying all dinosaurs..."
Dinosaur.destroy_all

puts "Destroying all parks..."
Park.destroy_all

puts "Creating all parks..."
happy_land = Park.create!(
  name: 'Happy Dinosaur Land',
  banner_url: 'https://www.collectjurassic.com/wp-content/uploads/2020/08/Jurassic_World_Camp_Cretaceous_McDonalds_Happy_Meals_Toys_Kids_Meal_FTR.jpg'
)

Park.create!(
  name: "Jurassic Park",
  banner_url: "https://pmcdeadline2.files.wordpress.com/2017/01/jurassicpark.jpg?crop=5px%2C92px%2C1138px%2C638px&resize=681%2C383"
)

Park.create!(
  name: "Jurassic World",
  banner_url: "https://universalnews.org/wp-content/uploads/2020/04/jurassic-world-3.jpg"
)

puts "...Created #{Park.count} parks"

puts "Creating all parks..."
Dinosaur.create!(
  name: 'Tomo',
  species: Dinosaur::SPECIES.sample,
  image_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1601296563/rurntrpijdpp56n2cxpf.jpg',
  park: happy_land
)

Dinosaur.create!(
  name: 'Denver',
  species: Dinosaur::SPECIES.sample,
  image_url: 'https://greenergrass.com/wp-content/uploads/2020/07/tumblr_m850wkhYeV1r9a32bo1_400.jpg',
  park: happy_land
)

Dinosaur.create!(
  name: "Yoshi",
  species: Dinosaur::SPECIES.sample,
  image_url: "https://pbs.twimg.com/media/Drk3tamUcAIhrVy.jpg",
  park: happy_land
)

Dinosaur.create!(
  name: "Barney",
  species: Dinosaur::SPECIES.sample,
  image_url: "https://static01.nyt.com/images/2017/04/09/arts/09BARNEY/09BARNEY-facebookJumbo.jpg",
  park: happy_land
)

Dinosaur.create!(
  name: "Little Foot",
  species: Dinosaur::SPECIES.sample,
  image_url: "https://i.imgur.com/tGMFnax.jpg",
  park: happy_land
)

Dinosaur.create!(
  name: "Mr. T-Rex",
  species: Dinosaur::SPECIES.sample,
  image_url: "https://cdn.trendhunterstatic.com/thumbs/cartoon-celebrity.jpeg",
  park: happy_land
)

puts "Cleaning all Attractions"
Attraction.destroy_all

puts "Creating attractions..."
attractions = ['brawl pit', 'ball pit', 'race', 'merry-go-round', 'dino-back riding', 'hang gliding']
attractions.each do |name|
  Attraction.create!(
    name: name
  )
end
puts "...created #{Attraction.count} attractions"

















puts "...Created #{Dinosaur.count} dinosaurs"
