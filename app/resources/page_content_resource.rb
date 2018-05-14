class PageContentResource < JSONAPI::Resource
  immutable

  attributes :content
  belongs_to :page
end
