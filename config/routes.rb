Rails.application.routes.draw do
  # resources :tasks, only: [:create, :index, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "tasks", to: "tasks#index"
  # get "tasks/:id", to: "tasks#show"
  # post "tasks/new", to: "tasks#new"
  # Add _path to the route prefix (left column) <- ????????????

    # Read all
    get    "tasks",          to: "tasks#index"
    # Create
    get    "tasks/new",      to: "tasks#new",  as: :new_task

    post   "tasks",          to: "tasks#create"
    # Read one - The `show` route needs to be *after* `new` route.
    get    "tasks/:id",      to: "tasks#show", as: :task
    # Update
    get    "tasks/:id/edit", to: "tasks#edit", as: :edit_task
    patch  "tasks/:id",      to: "tasks#update"
    # Delete
    delete "tasks/:id",      to: "tasks#destroy"
end
