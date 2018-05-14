Rails.application.routes.draw do
  jsonapi_resources :pages, only: [:create, :index] do
    jsonapi_links :h1, only: [:show]
    jsonapi_related_resource :h1
    jsonapi_links :h2, only: [:show]
    jsonapi_related_resource :h2
    jsonapi_links :h3, only: [:show]
    jsonapi_related_resource :h3
    jsonapi_links :link_contents, only: [:show]
    jsonapi_related_resources :link_contents
  end
end
