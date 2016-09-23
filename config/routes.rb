Rails.application.routes.draw do

  get 'miscellaneous/index'
  get 'welcome/index'
  root 'welcome#index'
 resources :welcome, :miscellaneous
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
