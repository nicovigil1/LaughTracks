require './app/models/comedian'

Comedian.destroy_all

Comedian.create(name: "Cesar Chavez", age: "66", city: "San Jose")
Comedian.create(name: "Dan Briechle", age: "30", city: "Flemington")
Comedian.create(name: "Will Petty", age: "45", city: "Nuremburg")
Comedian.create(name: "Bradley Niedt", age: "66", city: "Denver")



