# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Destroy all
User.destroy_all
Massage.destroy_all

# Create users
user_1 = User.create(
  name: "Georges",
  email: "georges@gmail.com",
  encrypted_password: "password",
  masseuse: false
  )

user_2 = User.create(
  name: "Tim",
  email: "tim@gmail.com",
  encrypted_password: "password",
  masseuse: true
  )



# Create massages
massage_1 = Massage.create(
  category: "Holistic",
  description: "A deeply therapeutic holistic treatment using blends of essential oils that appeal to the senses, to get a personal response to the needs of each individual. Provides great feel good, frees us from stress and helps to restore balance.",
  tagline: "Get rid of your stress",
  price: 68,
  length: 60,
  city: "Barcelona"
  )

massage_2 = Massage.create(
  category: "Thai",
  description: "The massage is based on the pressure of different energetic points to balance the energy and reduce tension, producing unsurpassable results, stimulating and strengthening body, mind and spirit. Recommended for reducing tension and increasing vitality. Massage done in tatami and without oil. We provide clothing to receive Thai massage.",
  tagline: "Exotic, unique and legendary",
  price: 98,
  length: 90,
  city: "Madrid"
  )

massage_3 = Massage.create(
  category: "Berber",
  description: "Start this relaxing mud hydrotherapy treatment by lying on a warm traditional Moroccan Hammam Massage slab. Your SenSpa therapist will then begin running warm water over your body using the Vichy shower, releasing gentle jets of water down the centre line of your body, stimulating pressure points by your spine. This hydrotherapy treatment is followed by a full body Moroccan Hammam mud massage using tradition Swedish techniques designed to relax and soothe muscles while also easing out any tensions or knots. Washing the mud off you using the overhead Vichy showers, a nourishing and moisturising balm is then applied to your body using long, stroking movements with this stimulating spa treatment ending with scalp massage.",
  tagline: "Unwind",
  price: 68,
  length: 60,
  city: "Barcelona"
  )

massage_4 = Massage.create(
  category: "Shiatsu",
  description: "Massage of back, neck and head with applying pressure in points based in Shiatsu. Open energy channels to relieve stress and restore energy. For those people prefer a firm massage without oil.",
  tagline: "Shiatsu Back and Neck",
  price: 38,
  length: 30,
  city: "Auckland"
  )

massage_5 = Massage.create(
  category: "Thai",
  description: "An excellent treatment for those suffering from poor circulation and stiffness, this full body massage uses a traditional Thai poultice to relieve tired and aching muscles and improves skin texture. By gently rolling and kneading a steamed muslin ball filled with a variety of Thai herbs, your muscles are gradually warmed until they are ready to receive the oil massage. Using the most relaxing Swedish techniques, this full body massage completely restores you from head to toe. Try the Thai Herbal Poultice Full Body massage for a unique and rejuvenating experience.",
  tagline: "Thai Herbal Poultice Full Body Massage",
  price: 110,
  length: 90,
  city: "Paris"
  )

massage_6 = Massage.create(
  category: "Berber",
  description: "An express face, head and neck massage  to release tension.",
  tagline: "Oriental Relaxer - Mini Treatment",
  price: 40,
  length: 20
  )

massage_7 = Massage.create(
  category: "Swedish",
  description: "Improve circulation, ease muscle aches and relieve tension. This flowing, moderate pressure massage will induce a deep feeling of relaxation.",
  tagline: "Relieve the tension",
  price: 50,
  length: 35)

massage_8 = Massage.create(
  category: "Swedish",
  description: "Melt away stress and relieve general muscular tension with this integrative massage session for the full body, with focus work in one or two areas of chronic tension.",
  tagline: "Muscle Rrefresher Swedish",
  price: 190,
  length: 75)

massage_9 = Massage.create(
  category: "Holistic",
  description: "Designed to relieve long held chronic tension in the muscle and break up adhesion's in the connective tissue or fascia. Various techniques may be used including, friction, stretching, joint mobilization, breath work and deeper pressure massage strokes.  For the safety and injury prevention of our therapists, we are unable to grant specific gender preferences for this treatment.",
  tagline: "Deep Tissues Massage",
  price: 150,
  length: 50)

massage_10 = Massage.create(
  category: "Thai",
  description: "Based on the ancient Asian healing and detoxification technique, Gua Sha Stone massage uses a traditional tool that is gently rubbed back and forth across the muscle in a friction motion to stimulate and increase circulation. Longer Swedish style strokes connect the various areas worked.  *Not recommended for anyone on any blood thinning products.",
  tagline: "Gua Sha Stone Massage",
  price: 220,
  length: 90)



