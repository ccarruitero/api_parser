# frozen_string_literal: true

class PageResource < JSONAPI::Resource
  attributes :url
  has_many :page_contents
end
