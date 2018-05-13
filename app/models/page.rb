class Page < ApplicationRecord
  has_one :h1, class_name: 'PageContent::H1'
  has_one :h2, class_name: 'PageContent::H2'
  has_one :h3, class_name: 'PageContent::H3'
  has_many :links, class_name: 'PageContent::Link'
end
