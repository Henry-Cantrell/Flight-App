Airport.create(airport_code:'SFO')
Airport.create(airport_code:'NYC')

Flight.create(origin_id:1, destination_id:2, duration:5, departure_date:2.months.ago, name:'Flight to NYC')
Flight.create(origin_id:2, destination_id:1, duration:6, departure_date:3.months.ago, name:'Flight to SFO')
