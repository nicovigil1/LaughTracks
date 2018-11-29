require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Special.destroy_all

# c1 = Comedian.create(name: "Cesar Chavez", age: 66, city: "San Jose")
# c2 = Comedian.create(name: "Dan Briechle", age: 30, city: "Flemington")
# Comedian.create(name: "Will Petty", age: 45, city: "Nuremburg")
# Comedian.create(name: "Bradley Niedt", age: 66, city: "Denver")

# c1.specials.create(name: "UFW", runtime: 35215200)
# c1.specials.create(name: "Delano grape strike", runtime: 2628000)

# c2.specials.create(name: "Drums, man", runtime: 1234)
# Special.create(name: "Art, man", runtime: 2345)

williams = Comedian.create(name:"Robin Williams", age:63, headshot:'williams.jpg')
carlin = Comedian.create(name: "George Carlin", age:71, headshot:'carlin.jpg')
stewart = Comedian.create(name: "Jon Stewart", age:56, headshot:'stewart.jpg')
colbert = Comedian.create(name: "Stephen Colbert", age:54, headshot:'colbert.jpg')
burnham = Comedian.create(name: "Bo Burnham", age:28, headshot:'burnham.jpg')
letterman = Comedian.create(name: "David Letterman", age:71, headshot:'letterman.jpg')
moore = Comedian.create(name: "Mary Tyler Moore", age:80, headshot:'moore.jpg')
burnett = Comedian.create(name: "Carol Burnett", age:85, headshot:'burnett.jpg')
tomlin = Comedian.create(name: "Lily Tomlin", age:79, headshot:'tomlin.jpg')
degeneres = Comedian.create(name: "Ellen DeGeneres", age:60, headshot:'degeneres.jpg')
ball = Comedian.create(name: "Lucille Ball", age:77, headshot:'ball.jpg')
poehler = Comedian.create(name: "Amy Poehler", age:47, headshot:'poehler.jpg')

williams.specials.create(name: "An Evening with Robin Williams", runtime:60)
williams.specials.create(name: "Weapons of Self Destruction", runtime:90)
williams.specials.create(name: "Off the Wall", runtime:60)

carlin.specials.create(name: "It’s Bad For Ya", runtime:70)
carlin.specials.create(name: "You Are All Diseased", runtime:65)
carlin.specials.create(name: "Back In Town", runtime:61)

stewart.specials.create(name: "Daily Show", runtime:30)

colbert.specials.create(name: "The Colbert Report", runtime:30)
colbert.specials.create(name: "The Late Show with Stephen Colbert", runtime:60)

burnham.specials.create(name: "what.", runtime:60)
burnham.specials.create(name: "Make Happy", runtime:60)

letterman.specials.create(name: "The Late Show with David Letterman", runtime:60)

moore.specials.create(name: "The Mary Tyler Moore Show", runtime:30)
moore.specials.create(name: "The Dick Van Dyke Show", runtime:30)

tomlin.specials.create(name: "Rowan & Martin's Laugh-In", runtime:60)
tomlin.specials.create(name: "The Merv Griffin Show", runtime:45)

degeneres.specials.create(name:"Ellen", runtime:30)
degeneres.specials.create(name:"The Ellen DegGeneres Show", runtime:30)
degeneres.specials.create(name:"Finding Nemo", runtime:100)

ball.specials.create(name:"I Love Lucy", runtime:30)

poehler.specials.create(name:"Saturday Night Live", runtime:60)
poehler.specials.create(name:"Parks and Recreation", runtime:30)
poehler.specials.create(name:"Mean Girls", runtime:97)













