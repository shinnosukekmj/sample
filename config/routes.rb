Rails.application.routes.draw do
        root 'lists#new'
        get'lists/new'=>'lists#new',as: 'new_list'
        post'lists'=>'lists#create',as: 'create_list'
        get'lists'=>'lists#index',as: 'list'
        get'lists/:id'=>'lists#show',as: 'show_list'
        get 'lists/:id/edit'=>'lists#edit',as: 'edit_list'
        patch'lists/:id'=>'lists#update',as: 'update_list'
        delete'lists/:id'=>'lists#destroy',as: 'destroy_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
