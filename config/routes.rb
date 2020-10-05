Rails.application.routes.draw do
  root 'welcome#index'
  resources :comments do
    collection do
      get '/:post_id/post', to: 'comments#post_comments'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
