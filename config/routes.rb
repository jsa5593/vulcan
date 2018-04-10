Rails.application.routes.draw do
  resources :project_controls
  resources :projects
  resources :srg_controls
  resources :srgs
  resources :srg
  match 'upload_srg' => 'srgs#upload', :as => :upload_srg, :via => :post

  root "pages#index"
end
