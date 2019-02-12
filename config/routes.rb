Rails.application.routes.draw do

root "pages#index"

devise_for :users, :controllers => {:registrations => "registrations"}

devise_scope :user do
  get 'login', to: 'devise/sessions#new'
end

end
