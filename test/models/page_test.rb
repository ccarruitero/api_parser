# frozen_string_literal: true

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  should have_one(:h1)
  should have_one(:h2)
  should have_one(:h3)
  should have_many(:link_contents)
  should validate_uniqueness_of(:url)
  should validate_presence_of(:url)

  test '#parse' do
    page = Page.create(url: 'https://www.nytimes.com/2018/05/14/world/middleeast/gaza-protests-palestinians-us-embassy.html')
    assert_not page.h1.content.nil?
    assert_not page.h2.content.nil?
    assert_not page.h3.content.nil?
    assert page.link_contents.count.positive?
  end
end
