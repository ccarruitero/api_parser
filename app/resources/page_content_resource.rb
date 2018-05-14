# frozen_string_literal: true

class PageContentResource < JSONAPI::Resource
  attributes :content
  belongs_to :page
end
