class MediaType < ActiveRecord::Base
	has_many :books
	has_many :games
	has_many :movies
end
