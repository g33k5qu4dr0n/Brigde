Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    scope module: :v1 do
      resources :users
      resources :transactions, only: %i[create destroy index]
    end
  end
end
