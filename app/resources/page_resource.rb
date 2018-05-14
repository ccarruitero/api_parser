class PageResource < JSONAPI::Resource
  attributes :url
  has_one :h1
  has_one :h2
  has_one :h3
  has_many :link_contents
end
