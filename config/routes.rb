SMerchPro::Application.routes.draw do
  
  root to: 'pages#index'
  match '*path', to: 'pages#index'
end
