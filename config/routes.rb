Ptest2::Application.routes.draw do
  
  resources :comments do
    resources :comments
  end

  resources :poems do
    resources :comments
  end
  
  resources :stories do
    resources :comments
  end
  
  root :to => "stories#index"
  
end
