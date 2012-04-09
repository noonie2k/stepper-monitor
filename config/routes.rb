StepperMonitor::Application.routes.draw do
  root to: 'home#index'

  resources :steps
  resources :users

  controller :sessions do
    get 'login'  => :create
    get 'logout' => :destroy
  end

  controller :graphs do
    get 'graphs' => :index
    get 'graphs/:start/:end' => :index
  end
end
