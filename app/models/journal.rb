class Journal < ApplicationRecord
  has_one_attached :cover_image

  scope :ordered, -> { order(published_on: :desc) }
end
