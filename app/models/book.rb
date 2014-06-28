class Book < ActiveRecord::Base
	has_one :media_type
end
