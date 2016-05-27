class Book < ActiveRecord::Base
	has_many :users
end
