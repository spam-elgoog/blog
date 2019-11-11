# frozen_string_literal: true

# This model handles commenting currently for articles but can be added to
# to any item like spictures, products and videos.
class Comment < ApplicationRecord
  belongs_to :article
end
