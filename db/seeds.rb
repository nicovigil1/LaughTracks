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

williams = Comedian.create(name:"Robin Williams", age:63, city:"Paradise Cay, CA", headshot:'williams.jpg')
carlin = Comedian.create(name: "George Carlin", age:71, city:"Santa Monica, CA", headshot:'carlin.jpg')
stewart = Comedian.create(name: "Jon Stewart", age:56, city:"New York City, NY", headshot:'stewart.jpg')
colbert = Comedian.create(name: "Stephen Colbert", age:54, city:"New York City, NY", headshot:'colbert.jpg')
burnham = Comedian.create(name: "Bo Burnham", age:28, city:"Los Angeles, CA", headshot:'burnham.jpg')
letterman = Comedian.create(name: "David Letterman", age:71, city:"North Salem, NY", headshot:'letterman.jpg')
moore = Comedian.create(name: "Mary Tyler Moore", age:80, city:"Greenwich, CT", headshot:'moore.jpg')
burnett = Comedian.create(name: "Carol Burnett", age:85, city:"Hollywood, CA", headshot:'burnett.jpg')
tomlin = Comedian.create(name: "Lily Tomlin", age:79, city:"Detroit, Michigan", headshot:'tomlin.jpg')
degeneres = Comedian.create(name: "Ellen DeGeneres", city:"Beverly Hills, California", age:60, headshot:'degeneres.jpg')
ball = Comedian.create(name: "Lucille Ball", age:77, city:"Las Angeles, CA", headshot:'ball.jpg')
poehler = Comedian.create(name: "Amy Poehler", age:47, city:"New York City, NY", headshot:'poehler.jpg')

williams.specials.create(name: "An Evening with Robin Williams", runtime:60, image:"an-evening-with-rob.jpg")
williams.specials.create(name: "Weapons of Self Destruction", runtime:90, image:"self-destruction.jpeg")
williams.specials.create(name: "Off the Wall", runtime:60, image:"off-the-wall.jpg")

carlin.specials.create(name: "It’s Bad For Ya", runtime:70, image:"its-bad-for-ya.jpg")
carlin.specials.create(name: "You Are All Diseased", runtime:65, image:"diseased-carlin.jpg")
carlin.specials.create(name: "Back In Town", runtime:61, image:"back-in-town.jpg")

stewart.specials.create(name: "Daily Show", runtime:30, image:"daily-show.jpeg")

colbert.specials.create(name: "The Colbert Report", runtime:30, image:"colbert-report.jpeg")
colbert.specials.create(name: "The Late Show with Stephen Colbert", runtime:60, image:"late-show-colbert.jpeg")

burnham.specials.create(name: "what.", runtime:60, image:"what-bo.jpg")
burnham.specials.create(name: "Make Happy", runtime:60, image:"make-happy.jpg")

letterman.specials.create(name: "The Late Show with David Letterman", runtime:60, image:"the-late-show.jpeg")

moore.specials.create(name: "The Mary Tyler Moore Show", runtime:30, image:"moore-show.jpeg")
moore.specials.create(name: "The Dick Van Dyke Show", runtime:30, image:"dick-van-dyke-show.jpeg")

burnett.specials.create(name:'The Carol Burnett Show', runtime:54, image:"burnett-show.jpg")

tomlin.specials.create(name: "Rowan & Martin's Laugh-In", runtime:60, image:"laugh-in.jpeg")
tomlin.specials.create(name: "The Merv Griffin Show", runtime:45, image:"merv.jpg")

degeneres.specials.create(name:"Ellen", runtime:30, image:"ellen-cover.jpg")
degeneres.specials.create(name:"The Ellen DegGeneres Show", runtime:30, image:"ellen-show.jpg")
degeneres.specials.create(name:"Finding Nemo", runtime:100, image:"nemo.jpeg")


ball.specials.create(name:"I Love Lucy", runtime:30, image:"i-love-lucy.jpg")

poehler.specials.create(name:"Saturday Night Live", runtime:60, image:"amy-snl-sized.jpg")
poehler.specials.create(name:"Parks and Recreation", runtime:30, image:"pnr.jpg")
poehler.specials.create(name:"Mean Girls", runtime:97, image:"mean-girls.jpg")













