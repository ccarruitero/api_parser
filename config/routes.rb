# frozen_string_literal: true

Rails.application.routes.draw do
  jsonapi_resources :pages, only: %i[create index show] do
    jsonapi_links :page_contents, only: [:show]
    jsonapi_related_resources :page_contents
    jsonapi_resources :page_contents, only: %i[index show]
  end

  jsonapi_resources :h1s, only: [:show]
  jsonapi_resources :h2s, only: [:show]
  jsonapi_resources :h3s, only: [:show]
  jsonapi_resources :link_contents, only: [:show]
end
