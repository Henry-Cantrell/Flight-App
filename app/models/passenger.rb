class Passenger < ApplicationRecord
	belongs_to :bookings
	has_many :flights, through: :bookings
end
