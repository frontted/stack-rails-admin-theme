Rails.application.routes.draw do
  root to: 'stack#index'

  get ':page' => 'stack#show', as: 'stack'
  
end
