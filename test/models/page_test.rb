require 'test_helper'

class PageTest < ActiveSupport::TestCase
  should have_one(:h1)
  should have_one(:h2)
  should have_one(:h3)
  should have_many(:links)
end
