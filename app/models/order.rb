class Order < ApplicationRecord
  validates :food, presence: true

  scope :today, -> { where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day) }
end
