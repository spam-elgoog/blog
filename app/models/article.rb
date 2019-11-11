# frozen_string_literal: true

# This is the Article model
class Article < ApplicationRecord
  has_many(:comments, dependent: :destroy)
  validates(:title,
            presence: true,
            length: { minimum: 5 })
end
