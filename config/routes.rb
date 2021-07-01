Rails.application.routes.draw do
  root "flights#index"

  resources :flights do
	collection do
		post :lookup
	end
  end

  resources :bookings

end
