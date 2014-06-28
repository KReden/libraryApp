namespace :fake_data do
	task :make_stuff => :environment do
		book = MediaType.find_by_name('book')
		game = MediaType.find_by_name('game')
		movie = MediaType.find_by_name('movie')

		p book

		Book.create([
    	{ name: "Ender's Game", author: 'Orson Scott Card', media_type_id: book.id },
    	{ name: "Ender's Shadow", author: 'Orson Scott Card', media_type_id: book.id },
  	])

		Game.create([
				{ name: 'Borderlands', studio: 'Gearbox Software', media_type_id: game.id },
				{ name: 'Borderlands 2', studio: 'Gearbox Software', media_type_id: game.id }
		])

		Movie.create([
			{ name: 'Star Wars: A New Hope', director: 'George Lucas', media_type_id: movie.id },
			{ name: 'Star Wars: Empire Strikes Back', director: 'George Lucas', media_type_id: movie.id },
			{ name: 'Star Wars: Return Of The Jedi', director: 'George Lucas', media_type_id: movie.id }
		])

	end
end

# g = Game.new(name: 'Borderlands 2', studio: 'Gearbox Software', media_type_id: game.id)