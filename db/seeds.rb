require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Special.destroy_all

Comedian.create(name: "Cesar Chavez", age: 66, city: "San Jose")
Comedian.create(name: "Dan Briechle", age: 30, city: "Flemington")
Comedian.create(name: "Will Petty", age: 45, city: "Nuremburg")
Comedian.create(name: "Bradley Niedt", age: 66, city: "Denver")

Special.create(name: "UFW", runtime: 35215200)
Special.create(name: "Delano grape strike", runtime: 2628000)

Special.create(name: "Drums, man", runtime: 1234)
Special.create(name: "Art, man", runtime: 2345)





