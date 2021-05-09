class Booking < ApplicationRecord
	belongs_to :passenger
	has_many :flights
end
