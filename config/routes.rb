StepperMonitor::Application.routes.draw do
  root to: 'home#index'

  resources :steps
  resources :users

  controller :sessions do
    get  'login'  => :new
    post 'login'  => :create
    get  'logout' => :destroy
  end

  controller :graphs do
    get 'graphs' => :index
  end
end
