# frozen_string_literal: true

class PageContent < ApplicationRecord
  validates :content, presence: true
  belongs_to :page
end
