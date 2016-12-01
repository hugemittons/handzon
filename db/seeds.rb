# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Destroy all
Appointment.destroy_all
Massage.destroy_all
User.destroy_all

# Create users
user_1 = User.create(
  name: "Georges Client",
  email: "georges@gmail.com",
  password: "password",
  address: "123 Client St"
  phone: "666777888"
  masseuse: false
  )

user_2 = User.create(
  name: "Tim Masseuse",
  email: "tim@gmail.com",
  password: "password",
  address: "123 Massage Terrace"
  phone: "999888777"
  masseuse: true
  )

# Create massages
massage_1 = Massage.create(
  category: "Holistic",
  user: user_2,
  description: "A deeply therapeutic holistic treatment using blends of essential oils that appeal to the senses, to get a personal response to the needs of each individual. Provides great feel good, frees us from stress and helps to restore balance.",
  tagline: "Get rid of your stress",
  price: 68,
  length: 60,
  city: "Barcelona"
  )

massage_2 = Massage.create(
  category: "Thai",
  user: user_2,
  description: "The massage is based on the pressure of different energetic points to balance the energy and reduce tension, producing unsurpassable results, stimulating and strengthening body, mind and spirit. Recommended for reducing tension and increasing vitality. Massage done in tatami and without oil. We provide clothing to receive Thai massage.",
  tagline: "Exotic, unique and legendary",
  price: 98,
  length: 90,
  city: "Barcelona"
  )

massage_4 = Massage.create(
  category: "Shiatsu",
  user: user_2,
  description: "Massage of back, neck and head with applying pressure in points based in Shiatsu. Open energy channels to relieve stress and restore energy. For those people prefer a firm massage without oil.",
  tagline: "Shiatsu Back and Neck",
  price: 38,
  length: 30,
  city: "San Francisco"
  )

massage_6 = Massage.create(
  category: "Berber",
  user: user_2,
  description: "An express face, head and neck massage  to release tension.",
  tagline: "Oriental Relaxer - Mini Treatment",
  price: 40,
  length: 20,
  city: "San Francisco"
  )


massage_7 = Massage.create(
  category: "Swedish",
  user: user_2,
  description: "Improve circulation, ease muscle aches and relieve tension. This flowing, moderate pressure massage will induce a deep feeling of relaxation.",
  tagline: "Relieve the tension",
  price: 50,
  length: 35,
  city: "Paris"
)


massage_8 = Massage.create(
  category: "Swedish",
  user: user_2,
  description: "Melt away stress and relieve general muscular tension with this integrative massage session for the full body, with focus work in one or two areas of chronic tension.",
  tagline: "Muscle Rrefresher Swedish",
  price: 190,
  length: 75,
  city: "Barcelona"
)

massage_9 = Massage.create(
  category: "Holistic",
  user: user_2,
  description: "Designed to relieve long held chronic tension in the muscle and break up adhesion's in the connective tissue or fascia. Various techniques may be used including, friction, stretching, joint mobilization, breath work and deeper pressure massage strokes.  For the safety and injury prevention of our therapists, we are unable to grant specific gender preferences for this treatment.",
  tagline: "Deep Tissues Massage",
  price: 150,
  length: 50,
  city: "London"
  )

appointment_1 = Appointment.create(
  date_time: DateTime.new(2001,2,3,4,5,6),
  user: user_1,
  massage: massage_7
  )

appointment_1 = Appointment.create(
  date_time: DateTime.new(2002,2,3,4,5,6),
  user: user_1,
  massage: massage_1
  )


