class PageContentResource < JSONAPI::Resource
  attributes :content
  belongs_to :page
end
