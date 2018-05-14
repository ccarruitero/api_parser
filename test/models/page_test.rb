require 'test_helper'

class PageTest < ActiveSupport::TestCase
  should have_one(:h1)
  should have_one(:h2)
  should have_one(:h3)
  should have_many(:links)

  test '#parse' do
    page = Page.new(url: 'https://www.nytimes.com/2018/05/14/world/middleeast/gaza-protests-palestinians-us-embassy.html')
    page.parse
    assert_not page.h1.content.nil?
    assert_not page.h2.content.nil?
    assert_not page.h3.content.nil?
    assert page.links.count > 0
  end
end
