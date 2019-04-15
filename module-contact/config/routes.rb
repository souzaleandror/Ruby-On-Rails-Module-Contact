Rails.application.routes.draw do
  
  LOCALES = /en|es|de|fr|it|pt/
  
  scope "(:locale)", :locale => LOCALES do
  
    root 'home#index'
    post 'home/create_contact', to: 'home#create_contact', :as => :create_contact   
    
    resources :subject_contacts
    resources :contacts
    get 'welcome/index'
    
    #get '/welcome/answer_contact', to: "welcome#answer_contact", :param => :id
    get 'welcome/answer_contact/:id', :to => 'welcome#answer_contact', :as => "answer_contact"
    # post 'welcome/send_answer_contact'
    
    devise_for :admins, 
            path: '', 
            path_names: { sign_in: "login", sign_out: "logout" }, 
            controllers: { sessions: "admins/sessions" }
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
