class PageResource < JSONAPI::Resource
  attributes :url
  has_many :page_contents
end
