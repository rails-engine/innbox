Rails.application.routes.draw do
  devise_for :users
  mount Mails::Engine => "/homeland"
  root to: 'welcome#index'
end
