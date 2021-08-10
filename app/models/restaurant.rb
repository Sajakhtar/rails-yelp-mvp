class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
