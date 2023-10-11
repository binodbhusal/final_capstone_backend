# Seed data for User table
user1 = User.create(name: 'User 1',role:'admin',email:'user1@gmail.com', password:'123456')
user2 = User.create(name: 'User 2',role:'admin',email:'user2@gmail.com', password:'123456')

# Seed data for StoreLocation table
location1 = StoreLocation.create(city_name: 'Lisbon')
location2 = StoreLocation.create(city_name: 'Kathmandu')

# Seed data for Motor table
motor1 = Motor.create(
  user_id: user1.id,
  location_id: location1.id,
  brand_name: 'Porsche',
  model_no: '718',
  manufacturer: 'Porsche Automobil Holding SE',
  manufacture_date: Date.new(2022, 1, 15),
  description: 'These models were made for the sport of it. They are mid-engined roadsters that unite the sporting spirit of the legendary Porsche 718 with the sports car of tomorrow – and transfer it to the roads of today’s world. With one goal: to take the everyday out of every day. What is it that makes the 718 models so special? Their performance, their handling, their design, their generous amount of space with two luggage compartments. But most of all: a mid-engined layout that makes all this possible in the first place.',
  photo: 'https://cdn.pixabay.com/photo/2016/04/01/12/16/car-1300629_1280.png',
  unit_price: 60000.0,
  purchase_fee: 600.0,
  finance_fee: 1800.0,
  total_price: 62400.0,
)

motor2 = Motor.create(
  user_id: user2.id,
  location_id: location2.id,
  brand_name: 'BMW',
  model_no: '456',
  manufacturer: 'Bayerische Motoren Werke AG',
  manufacture_date: Date.new(2023, 3, 20),
  description: 'THE SECOND GENERATION.
  (BMW F48)
  BMW X Series BMW X1 F48 second generation three-quarter side view standing in front of a city
  The second-generation BMW X1 has a more dynamic and sporty appearance than its predecessor. Launched in 2023, it’s distinguished by innovative technologies, such as an optional head-up display. A new range of turbocharged diesel and petrol engines give both efficiency and sportiness',
  photo: 'https://media.gettyimages.com/id/1366436208/pt/foto/bmw-x3-on-a-road.jpg?s=1024x1024&w=gi&k=20&c=QwELosTux3_OTFmzAUOKF69JnjKjqM01OvF67LSrjnk=',
  unit_price: 50000.0,
  purchase_fee: 500.0,
  finance_fee: 1500.0,
  total_price: 52000.0,
 
)
motor3 = Motor.create(
  user_id: user2.id,
  location_id: location1.id,
  brand_name: 'Harley Davidson',
  model_no: '1918',
  manufacturer: 'Harley-Davidson, Inc.',
  manufacture_date: Date.new(2023, 5, 25),
  description: 'A liquid-cooled V-Twin tuned to make tremendous torque at low RPM, with a torque curve that stays flat through the powerband.Build road confidence by selecting different pre-programmed ride modes. Switch between Road, Rain and Sport, or customize your own.',
  photo: 'https://cdn.pixabay.com/photo/2017/01/11/15/26/harley-1972061_1280.jpg',
  unit_price: 14999.0,
  purchase_fee: 149.99,
  finance_fee: 449.97,
  total_price: 15598.96,
 
)

motor4 = Motor.create(
  user_id: user1.id,
  location_id: location1.id,
  brand_name: 'Vespa GTS',
  model_no: '497',
  manufacturer: 'Piaggio & C. SpA',
  manufacture_date: Date.new(2023, 5, 25),
  description: 'The GTS chassis has improved suspension too. While both front and rear units have been retuned to further improve comfort and stability, the front suspension in particular has been vastly redesigned. While still based on the traditional trailing-link layout, the components now appear stronger and show more refined geometry, including the brake caliper mounting. Piaggio did not release any specific technical data, but it claims that the front end now feels more stable at speed and more responsive as well.',
  photo: 'https://www.algateckids.pt/images/articulos/max/moto_vespa_classica_metallica_ambosstoys_3202-1.jpg',
  unit_price: 7799.0,
  purchase_fee: 77.99,
  finance_fee: 233.97,
  total_price: 8110.96,
 
)
motor5 = Motor.create(
  user_id: user1.id,
  location_id: location1.id,
  brand_name: 'Tesla',
  model_no: '1020',
  manufacturer: 'Tesla Motors',
  manufacture_date: Date.new(2023, 1, 20),
  description: 'The car that kickstarted the EV revolution is starting to show its age. While the 2023 Tesla Model S falls behind newly developed rivals with more over-the-top features and longer driving ranges, the sedan-like hatchback continues to be competitive. After all, the Model S offers up to 405 miles of range on a single charge. Plus, the 1020-hp tri-motor Plaid performance model leaps to 60 mph in just 2.1 seconds, which is as quick as a multimillion-dollar hypercar.',
  photo: 'https://hips.hearstapps.com/hmg-prod/images/2020-porsche-taycan-4s-vs-2020-tesla-model-s-long-range-202-1621386342.jpg?crop=0.842xw:0.711xh;0,0.161xh&resize=1200:*',
  unit_price: 76630.0,
  purchase_fee: 766.33,
  finance_fee: 233.97,
  total_price: 2298.99,
 
)

