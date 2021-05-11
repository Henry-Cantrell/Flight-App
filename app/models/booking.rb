class Booking < ApplicationRecord
	has_many :passengers
	has_many :flights
end
