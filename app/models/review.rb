class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true, length: { minimum: 1 }
  RATINGS = [0, 1, 2, 3, 4, 5].freeze
  validates :rating, presence: true, inclusion: { in: RATINGS }, numericality: true
end
