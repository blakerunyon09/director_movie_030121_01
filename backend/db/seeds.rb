Movie.destroy_all
Director.destroy_all

tarentino = Director.create(name: "Tarentino")
coppola = Director.create(name: "Coppola")
west = Director.create(name: "West")

Movie.create(name: "Pulp Fiction", rating: "10", director: tarentino)
Movie.create(name: "Kill Bill", rating: "9", director: tarentino)
Movie.create(name: "Godfather", rating: "10", director: coppola)
Movie.create(name: "The Searchers", rating: "10", director: west)
Movie.create(name: "Ingolorius Basterds", rating: "10", director: tarentino)