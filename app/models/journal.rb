class Journal < ApplicationRecord
  extend FriendlyId
  friendly_id :subtitle, use: :slugged

  has_one_attached :cover_image

  scope :ordered, -> { order(published_on: :desc) }

  # should update when subtitle changes
  def should_generate_new_friendly_id?
    subtitle_changed? || slug.blank?
  end
end
