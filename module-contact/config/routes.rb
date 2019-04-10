Rails.application.routes.draw do
  
  LOCALES = /en|es|de|fr|it|pt/
  
  scope "(:locale)", :locale => LOCALES do
  
    root 'home#index'
    post 'home/create_contact', to: 'home#create_contact', :as => :create_contact   
    
    resources :contacts
    resources :subject_contacts
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
