Rails.application.routes.draw do
  devise_for :users
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)

  root 'welcome#index'
  # authenticate :user do
  get '/secret' => 'welcome#secret'
  # end
end
