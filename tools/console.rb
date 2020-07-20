require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#use/project/pledge
# greg = User.new("greg")
# david = User.new ("david")
# paul = User.new("paul")
# mike = User.new("mike")

# car = Project.new("car", greg, 1000)
# bike = Project.new("bike", david, 1100)
# book = Project.new("book", greg, 300)
# keyboard = Project.new("keyboard", paul, 1000)
# show = Project.new("show", mike, 15000)
# headphones = Project.new("headphones", greg, 5000)
# shirt = Project.new("shirt", david, 300)

# pledge1 = Pledge.new(car, greg, 5)
# pledge2 = Pledge.new(bike, greg, 4)
# pledge3 = Pledge.new(book, david, 19)
# pledge4 = Pledge.new(car, paul, 1000)
# pledge5 = Pledge.new(show, mike, 5000)
# pledge6 = Pledge.new(show, david, 12000)
# pledge7 = Pledge.new(show, david, 12000)

#guest/listing/trip
# greg = Guest.new("Greg")
# david = Guest.new ("David")
# paul = Guest.new("Paul")
# mike = Guest.new("Mike")
# michael = Guest.new("Mike")

# nyc = Listing.new("NYC")
# nyc_2 = Listing.new ("NYC")
# rio = Listing.new("Rio")
# london = Listing.new("London")

# spring_break = Trip.new(greg, rio)
# winter_break = Trip.new(paul, nyc)
# summer_break = Trip.new(mike, london)
# fake_break = Trip.new(david, nyc)
# another_trip = Trip.new(david, london)
# another_trip_2 = Trip.new(paul, london)

#bakery/desserts/ingredients
# vincents = Bakery.new("Vincent's")
# jenns = Bakery.new("Jenn's")
# ians = Bakery.new("Ian's")

# pie = Dessert.new("Pie", ians)
# cake = Dessert.new("Cake", jenns)
# muffin = Dessert.new("Muffin", ians)
# cookie = Dessert.new("Cookie", ians)

# sugar = Ingredient.new("Sugar Cane", 13, pie)
# apple = Ingredient.new("Apple", 3, pie)
# sugar2 = Ingredient.new("Sugar", 13, cookie)

#actor/character/show/movie

# #movie actors
# meryl = Actor.new("Meryl Streep")
# liam = Actor.new("Liam Neeson")
# tom = Actor.new("Tom Hanks")
# leo = Actor.new("Leonardo DiCaprio")
# robert = Actor.new("Robert Downey Junior")
# chris_evans = Actor.new("Chris Evans")
# murphy = Actor.new("Eddie Murphy")

# #show actors
# grant = Actor.new("Grant Gustin")
# candice = Actor.new("Candice Patton")
# cranston = Actor.new("Brian Cranston")
# carell = Actor.new("Steve Carell")

# #movies
# castaway = Movie.new("Castaway")
# forest_gump = Movie.new("Forest Gump")
# prada = Movie.new("The Devil Wears Prada")
# taken = Movie.new("Taken")
# inception = Movie.new("Inception")
# avengers = Movie.new("The Avengers")
# iron_man = Movie.new("Iron Man")
# iron_man_2 = Movie.new("Iron Man 2")
# iron_man_3 = Movie.new("Iron Man 3")
# spider_man = Movie.new("Homecoming")
# captain_america = Movie.new("Captain America")
# the_flash_movie = Movie.new("The Flash")
# nutty_professor = Movie.new("The Nutty Professor")

# #shows
# office = Show.new("The Office")
# flash = Show.new("The Flash")
# bad = Show.new("Breaking Bad")

# #movie characters
# dad = Character.new("Dad", liam)
# forest = Character.new("Forest Gump", tom)
# wilson = Character.new("Wilson", tom)
# miranda = Character.new("Miranda", meryl)
# leos_character = Character.new("Leo's Character", leo)
# tony_stark = Character.new("Tony Stark", robert)
# steve_rogers = Character.new("Steve Rogers", chris_evans)
# sherman = Character.new("Sherman Klump", murphy)
# buddy = Character.new("Buddy Love", murphy)
# papa = Character.new("Papa Klump", murphy)

# #show characters
# barry_allen = Character.new("Barry Allen", grant)
# iris_west = Character.new("Iris West-Allen", candice)
# walter_white = Character.new("Walter White", cranston)
# michael_scott = Character.new("Michael Scott", carell)

# Char_Show.new(flash, barry_allen)
# Char_Show.new(flash, iris_west)

# Char_Movie.new(avengers, tony_stark)
# Char_Movie.new(avengers, steve_rogers)
# Char_Movie.new(castaway, wilson)
# Char_Movie.new(iron_man, tony_stark)
# Char_Movie.new(iron_man_2, tony_stark)
# Char_Movie.new(iron_man_3, tony_stark)
# Char_Movie.new(spider_man, tony_stark)

# Char_Movie.new(nutty_professor, papa)
# Char_Movie.new(nutty_professor, sherman)
# Char_Movie.new(nutty_professor, buddy)

#driver/passenger/ride

#drivers
jim = Driver.new("Jim")
becky = Driver.new("Becky")

#passengers
bob = Passenger.new("Bob")
jenn = Passenger.new("Jennifer")

#rides
r1 = Ride.new(jim, jenn, 50.0)
r2 = Ride.new(becky, jenn, 57.5)
r3 = Ride.new(jim, bob, 78.3)
r4 = Ride.new(becky, bob, 23.5)








Pry.start