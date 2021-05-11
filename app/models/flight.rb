class Flight < ApplicationRecord
	#associations
	belongs_to :origin, class_name: 'Airport'
	belongs_to :destination, class_name: 'Airport'
	has_many :bookings
end
