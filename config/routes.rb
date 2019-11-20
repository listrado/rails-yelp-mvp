Rails.application.routes.draw do
  get     'restaurants',         to: 'restaurants#index',     as: :index
  get     'restaurants/new',     to: 'restaurants#new',       as: :new
  get     'restaurants/:id',     to: 'restaurants#show',      as: :restaurant
  post    'restaurants',         to: 'restaurants#create',    as: :create
  delete  'restaurants/:id',     to: 'restaurants#destroy',   as: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get   'restaurants/:restaurant_id/reviews/new',
        to: 'reviews#new',
        as: :review_new
  post  'restaurants/:restaurant_id/reviews',
        to: 'reviews#create',
        as: :review_create
end
