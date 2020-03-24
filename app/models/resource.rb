class Resource < ApplicationRecord

  belongs_to :category
  belongs_to :user, optional: true

  scope :by_date, -> { order(date: :desc) }
end
