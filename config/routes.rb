SesusoPos::Application.routes.draw do

  match "/selectTable" => "frontend#selectTable", :as => :selectTable
  match "/receiveSelectedTable" => "frontend#receiveSelectedTable", :as => :receiveSelectedTable
  match "/selectOrderItem" => "frontend#selectOrderItem", :as => :selectOrderItem


  resources :order_items

  resources :products

  resources :categories

  resources :orders

  resources :restaurant_tables

  resources :restaurants

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

end