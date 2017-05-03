User.destroy_all
#
u1 = User.create( name: "Bill", password: "chick", password_confirmation: "chick" )
#
u2 = User.create( name: "Nick", password: "duck", password_confirmation: "duck" )

puts "User Count: #{User.count}"


Venue.destroy_all

club = Venue.create({
category: "Cafe",
text: "",
venue: "The Breakfast Club",
address: "206 St George Road",
suburb: "Northcote",
phone: "03 9416 4884",
website: "https://www.facebook.com/thebreakfastclubcafe"
})

thieves = Venue.create({
category: "Cafe",
text: "",
venue: "The Breakfast Thieves",
address: "Shop 1, 420 Gore St",
suburb: "Fitzroy",
phone: "03 9416 4884",
website: "http://www.breakfastthieves.com/"
})

au79 = Venue.create({
category: "Cafe",
text: "",
venue: "Au79",
address: "27 Nicholson St",
suburb: "Abbotsford",
phone: "03 9807 3456",
website: "http://au79cafe.com.au/"
})

andorra = Venue.create({
category: "Bar",
text: "",
venue: "Little Andorra",
address: "555 Nicholson St",
suburb: "Carlton North",
phone: "03 9876 2371",
website: "http://www.littleandorra.com.au/"
})

social = Venue.create({
category: "Bar",
text: "",
venue: "Sunshine Social",
address: "64 Gengala Rd",
suburb: "Sunshine West",
phone: "03 481 2908",
website: "https://www.facebook.com/SunshineSocialRestaurant/"
})

whitehart = Venue.create({
category: "Bar",
text: "",
venue: "Whitehart",
address: "22 Whitehart Lane",
suburb: "Melbourne",
phone: "03 872 9021",
website: "http://www.whitehartbar.com.au/"
})

buck = Venue.create({
category: "Bar",
text: "",
venue: "Buck Mulligan",
address: "217 High St",
suburb: "Northcote",
phone: "03 8712 3485",
website: "http://www.buckmulligans.com.au/"
})

nighthawks = Venue.create({
category: "Bar",
text: "",
venue: "Nighthawks",
address: "136 Johnston St",
suburb: "Collingwood",
phone:  "03 9823 4728",
website: "https://www.facebook.com/nighthawksbarcollingwood"
})

life = Venue.create({
category: "Bar",
text: "",
venue: "Public Life",
address: "162 Union Rd",
suburb: "Ascot Vale",
phone: "03 8234 5712",
website: "http://www.buckmulligans.com.au/"
})

boilermaker = Venue.create({
category: "Bar",
text: "",
venue: "Boilermaker House",
address: "209 - 211 Lonsdale St",
suburb: "Melbourne",
phone: "03 9623 0142",
website: "https://www.facebook.com/BoilermakerHouseMelbourne"
})

kong = Venue.create({
category: "Restuarant",
text: "",
venue: "Kong Fitzroy",
address: "229 Smith St",
suburb: "Fitzroy",
phone: "03 9832 1832",
website: "https://www.kongbbq.com.au/"
})

bad = Venue.create({
category: "Restaurant",
text: "",
venue: "Bad Boys",
address: "57 Lonsdale St",
suburb: "Melbourne",
phone: "03 9412 3778",
website: "https://www.facebook.com/BadBoysMelb/"
})

hochi = Venue.create({
category: "Restaurant",
text: "",
venue: "Hochi Mama",
address: "11-15 Liverpool St",
suburb: "Melbourne",
phone:  "03 9712 2811",
website: "http://www.hcmkitchen.com.au/"
})

leonard = Venue.create({
category: "Restaurant",
text: "",
venue: "Leonards House of Love",
address: "3 Wilson St",
suburb: "South Yarra",
phone: "03 9833 7688",
website: "https://www.facebook.com/leonardshouseoflove"
})

bacaro = Venue.create({
category: "Restaurant",
text: "",
venue: "Il Bacaro",
address: "168 Little Collins St",
suburb: "Melbourne",
phone: "03 9852 5644",
website: "http://ilbacaro.com.au/"
})

pontoon = Venue.create({
category: "Restaurant",
text: "",
venue: "Pontoon",
address: "30 Jacks Boulevard",
suburb: "St Kilda",
phone: "03 9422 7865",
website: "http://pontoonstkildabeach.com.au/"
})

puts "Venue Count: #{ Venue.all.count }"

Blog.destroy_all

cafe = Blog.create({
title: "Best Cafes in Melbourne",
tagline: "Enjoy the citys finest coffee",
copy: "Like its residents, St Kilda’s spread of cafes is a real mixed bag. In a good way. You’ve got the institutions that have served the community for decades, and plenty of sleek newcomers rife with matcha lattes and health bowls. Again – in a good way. Get a spot outside under the palms and soak it up.",
venue_id: bad.id
})

restaurant = Blog.create({
title: "Best Restaurants in Melbourne",
tagline: "The venues shaping this citys culinary scene",
copy: "What makes a good restaurant? We are interested in how well a place lives up to its own ambitions, regardless of its age, price point or cuisine. Maybe it offers value for money and an incredible atmosphere. Maybe it pioneered a trend, and remains the most vital example of it. Or maybe, after several decades in operation, it still offers an undeniably great experience. All are equally valid answers. The remit may be wide, but if you’re looking for restaurants that both define and capture Melbourne’s culinary spirit, stop right here.",
venue_id: bad.id
})

byo = Blog.create({
title: "Best BYO Restaurants in Melbourne",
tagline: "When an expensive wine list just won't do",
copy: "How good is BYO? Whether you're eating on a budget or itching to try a bottle stashed at home, there is a certain satisfaction in walking through the door and pouring yourself exactly what you want to drink. Here are our favourites.",
venue_id: bad.id
})

brunch = Blog.create({
title: "Best Brunch spots in Melbourne",
tagline: "Sweet or savoury? Avocado or Eggs? We can help you decide.",
copy: "Breakfast might even be the closest thing we have to a national cuisine. Here we pay tribute to Melbourne’s best; places shaping the very definition of the pre-midday meal. Others we’ve selected for consistent performance – they’ve nailed the classics and learnt how to handle the crowds that follow. Some are big, some are small. Some are secluded neighbourhood prizes, others pull customers from across the city. But they all have one thing in common: they represent a great cross-section of morning dining in Melbourne.",
venue_id: bad.id
})

barbeque = Blog.create({
title: "Best American Barbeque in Melbourne",
tagline: "Take a trip to the Deep South",
copy: "American barbeque (or barbecue if you want to be really authentic) is a relatively new kid on the Sydney dining block, but it’s a traditional method of cooking that's had people licking their fingers for centuries. When meat (vegetarians need not apply) is cooked this long and slow, there’s only one result: charred, succulent and profoundly flavoursome. Don’t forget a side of pickles, potato salad or slaw.",
venue_id: bad.id
})

puts "Blog Count: #{ Blog.all.count }"
