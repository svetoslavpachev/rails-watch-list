Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :new, :create] do resources :bookmarks, only: [:new, :create, :delete]
  end
end
