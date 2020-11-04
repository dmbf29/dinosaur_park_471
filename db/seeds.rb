puts "Destroying all parks..."
Park.destroy_all

puts "Creating all parks..."
Park.create!(
  name: 'Happy Dinosaur Land',
  banner_url: 'https://www.collectjurassic.com/wp-content/uploads/2020/08/Jurassic_World_Camp_Cretaceous_McDonalds_Happy_Meals_Toys_Kids_Meal_FTR.jpg'
)
puts "...Created #{Park.count} parks"
