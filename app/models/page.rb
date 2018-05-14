require 'mechanize'

class Page < ApplicationRecord
  has_one :h1, class_name: 'PageContent::H1'
  has_one :h2, class_name: 'PageContent::H2'
  has_one :h3, class_name: 'PageContent::H3'
  has_many :links, class_name: 'PageContent::Link'

  def parse
    agent = Mechanize.new
    page = agent.get(url)
    store_tag(page, 'h1')
    store_tag(page, 'h2')
    store_tag(page, 'h3')

    page.css('a').each do |link|
      links.create(content: link.attr('href'))
    end
  end

  def store_tag(page, tag)
    page_tag = page.css(tag)
    return unless page_tag.count > 0
    send("build_#{tag}", content: page_tag.first.text.strip).save
  end
end
