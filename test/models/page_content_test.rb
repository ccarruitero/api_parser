# frozen_string_literal: true

require 'test_helper'

class PageContentTest < ActiveSupport::TestCase
  should validate_presence_of(:content)
end
