require 'mechanize'

class Page < ApplicationRecord
  has_many :page_contents
  has_one :h1, class_name: 'PageContent::H1'
  has_one :h2, class_name: 'PageContent::H2'
  has_one :h3, class_name: 'PageContent::H3'
  has_many :link_contents, class_name: 'PageContent::LinkContent'

  validates :url, presence: true, uniqueness: true

  after_create :parse

  def parse
    return unless link_contents.count.zero?
    agent = Mechanize.new
    page = agent.get(url)
    store_tag(page, 'h1')
    store_tag(page, 'h2')
    store_tag(page, 'h3')

    page.css('a').each do |link|
      link_contents.create(content: link.attr('href'))
    end
  end

  def store_tag(page, tag)
    page_tag = page.css(tag)
    return unless page_tag.count > 0
    send("build_#{tag}", content: page_tag.first.text.strip).save
  end
end
