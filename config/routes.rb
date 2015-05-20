Rails.application.routes.draw do
  resources :products, only: :index
  get 'bonus_codes/validate', to: 'bonus_codes#index', as: :bonus_codes

  match "/404" => "errors#error404", via: [ :get ]
  match "/403" => "errors#error403", via: [ :get ]
  match "/200" => "errors#error200", via: [ :get ]

  root to: "products#index"
end
