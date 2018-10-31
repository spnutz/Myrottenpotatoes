Myrottenpotatoes::Application.routes.draw do
    resources :movies
    root :to => redirect('/movies')
    
    get 'auth/:provider/callback' => 'sessions#create'
    post 'logout' => 'sessions#destroy'
    get 'auth/failure' => 'sessions#failure'
    get 'auth/facebook',:as => 'login'
    
end