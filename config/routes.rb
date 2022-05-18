Rails.application.routes.draw do
  resources :gardens do
    # gardens/:garden_id/plants/??
    resources :plants, only: [:new, :create]
  end

  # plants/:id
  resources :plants, only: :destroy
end
