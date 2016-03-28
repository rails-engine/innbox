Rails.application.routes.draw do
  devise_for :users
  mount Innbox::Engine => "/homeland"
  root to: 'welcome#index'
end
