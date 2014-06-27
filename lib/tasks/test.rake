namespace :test do
	task :media => :environment do
	# 	Media.create([ 
	# 		{ type: 'book' },
	# 		{ type: 'movie' },
	# 		{ type: 'game' },
	# 		{ type: 'other' }
	#  	], :without_protection => true)
	 media = Media.new( type: 'book' )
   media.save
  end

end
