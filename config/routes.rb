Rails.application.routes.draw do
  resources :chapters do
    resources :sections do
      resources :lessons do
        post :update_row_order, on: :collection
      end
    end
  end
end
