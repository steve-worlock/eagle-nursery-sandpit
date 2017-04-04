Rails.application.routes.draw do
  
		resources :customers 
		resources :transactions
#               resources :customers, except: [:show]  
		get '/splashpage/splashpage', to: 'splashpage#splashpage'
		get '/customers/:temp_id', to: 'transactions#indextran'

		namespace :api do
			resources :transactions, only: [:index]
			resources :balance, only: [:balance]
		end 								 
#  match 'v:api/*path', :to => redirect("/api/v2/%{path}")
#  get '*path', :to => redirect("/v1/%{path}")
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

