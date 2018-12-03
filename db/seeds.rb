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
poehler = Comedian.create(name: "Amy Poehler", age:47, city:"New York City, NY", headshot:'poehler.jpg')
carlin = Comedian.create(name: "George Carlin", age:71, city:"Santa Monica, CA", headshot:'carlin.jpg')
burnett = Comedian.create(name: "Carol Burnett", age:85, city:"Hollywood, CA", headshot:'burnett1.jpg')
stewart = Comedian.create(name: "Jon Stewart", age:56, city:"New York City, NY", headshot:'stewart2.jpg')
degeneres = Comedian.create(name: "Ellen DeGeneres", city:"Beverly Hills, California", age:60, headshot:'ellen1.jpg')
colbert = Comedian.create(name: "Stephen Colbert", age:54, city:"New York City, NY", headshot:'colbert.jpg')
moore = Comedian.create(name: "Mary Tyler Moore", age:80, city:"Greenwich, CT", headshot:'moore.jpeg')
letterman = Comedian.create(name: "David Letterman", age:71, city:"North Salem, NY", headshot:'letterman.jpg')
tomlin = Comedian.create(name: "Lily Tomlin", age:79, city:"Detroit, Michigan", headshot:'tomlin.jpg')
burnham = Comedian.create(name: "Bo Burnham", age:28, city:"Los Angeles, CA", headshot:'burnham.jpg')
ball = Comedian.create(name: "Lucille Ball", age:77, city:"Las Angeles, CA", headshot:'ball.jpg')

williams.specials.create(name: "An Evening with Robin Williams", runtime:60, image:"an-evening-with-rob.jpg", imdb:"https://www.imdb.com/title/tt0195691/?ref_=nv_sr_1")
williams.specials.create(name: "Weapons of Self Destruction", runtime:90, image:"self-destruction.jpeg", imdb:"https://www.imdb.com/title/tt1560169/?ref_=nv_sr_1")
williams.specials.create(name: "Off the Wall", runtime:60, image:"off-the-wall.jpg", imdb:"https://www.imdb.com/title/tt2388730/?ref_=nv_sr_3")

carlin.specials.create(name: "It’s Bad For Ya", runtime:70, image:"its-bad-for-ya.jpg", imdb:"https://www.imdb.com/title/tt0963207/?ref_=nv_sr_1")
carlin.specials.create(name: "You Are All Diseased", runtime:65, image:"diseased-carlin.jpg", imdb:"https://www.imdb.com/title/tt0246645/?ref_=nv_sr_1")
carlin.specials.create(name: "Back In Town", runtime:61, image:"back-in-town.jpg", imdb:"https://www.imdb.com/title/tt0246641/?ref_=nv_sr_1")

stewart.specials.create(name: "Daily Show", runtime:30, image:"daily-show.jpeg", imdb:"https://www.imdb.com/title/tt0115147/?ref_=nv_sr_1")

colbert.specials.create(name: "The Colbert Report", runtime:30, image:"colbert-report.jpeg", imdb:"https://www.imdb.com/title/tt0458254/?ref_=nv_sr_4")
colbert.specials.create(name: "The Late Show with Stephen Colbert", runtime:60, image:"late-show-colbert.jpeg", imdb:"https://www.imdb.com/title/tt3697842/?ref_=nv_sr_1")

burnham.specials.create(name: "what.", runtime:60, image:"what-bo.jpg", imdb:"https://www.imdb.com/title/tt3210258/?ref_=nv_sr_3")
burnham.specials.create(name: "Make Happy", runtime:60, image:"make-happy.jpg", imdb:"https://www.imdb.com/title/tt5192124/?ref_=nv_sr_2")

letterman.specials.create(name: "The Late Show with David Letterman", runtime:60, image:"the-late-show.jpeg", imdb:"https://www.imdb.com/title/tt0106053/?ref_=nv_sr_3")

moore.specials.create(name: "The Mary Tyler Moore Show", runtime:30, image:"moore-show.jpeg", imdb:"https://www.imdb.com/title/tt0065314/?ref_=nv_sr_1")
moore.specials.create(name: "The Dick Van Dyke Show", runtime:30, image:"dick-van-dyke-show.jpeg", imdb:"https://www.imdb.com/title/tt0054533/?ref_=nv_sr_2")

burnett.specials.create(name:'The Carol Burnett Show', runtime:54, image:"burnett-show.jpg", imdb:"https://www.imdb.com/title/tt0061240/?ref_=nv_sr_1")

tomlin.specials.create(name: "Rowan & Martin's Laugh-In", runtime:60, image:"laugh-in.jpeg", imdb:"https://www.imdb.com/title/tt0062601/?ref_=nv_sr_1")
tomlin.specials.create(name: "The Merv Griffin Show", runtime:45, image:"merv.jpg", imdb:"https://www.imdb.com/title/tt0055691/?ref_=nv_sr_1")

degeneres.specials.create(name:"Ellen", runtime:30, image:"elen-original-show.jpg", imdb:"https://www.imdb.com/title/tt0108761/?ref_=nm_knf_t3")
degeneres.specials.create(name:"The Ellen DegGeneres Show", runtime:30, image:"ellen-show.jpg", imdb:"https://www.imdb.com/title/tt0379623/?ref_=nm_knf_i1")
degeneres.specials.create(name:"Finding Nemo", runtime:100, image:"nemo.jpeg", imdb:"https://www.imdb.com/title/tt0266543/?ref_=nv_sr_1")


ball.specials.create(name:"I Love Lucy", runtime:30, image:"i-love-lucy.jpg", imdb:"https://www.imdb.com/title/tt0043208/?ref_=nv_sr_1")

poehler.specials.create(name:"Saturday Night Live", runtime:60, image:"amy-snl-sized.jpg", imdb:"https://www.imdb.com/title/tt0072562/?ref_=nv_sr_1")
poehler.specials.create(name:"Parks and Recreation", runtime:30, image:"pnr.jpg", imdb:"https://www.imdb.com/title/tt1266020/?ref_=nv_sr_1")
poehler.specials.create(name:"Mean Girls", runtime:97, image:"mean-girls.jpg", imdb:"https://www.imdb.com/title/tt0377092/?ref_=nv_sr_1")













