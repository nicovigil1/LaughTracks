require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Special.destroy_all

c1 = Comedian.create(name: "Cesar Chavez", age: 66, city: "San Jose")
c2 = Comedian.create(name: "Dan Briechle", age: 30, city: "Flemington")
Comedian.create(name: "Will Petty", age: 45, city: "Nuremburg")
Comedian.create(name: "Bradley Niedt", age: 66, city: "Denver")

c1.specials.create(name: "UFW", runtime: 35215200)
c1.specials.create(name: "Delano grape strike", runtime: 2628000)

c2.specials.create(name: "Drums, man", runtime: 1234)
Special.create(name: "Art, man", runtime: 2345)





