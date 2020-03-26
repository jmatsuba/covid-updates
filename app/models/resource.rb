class Resource < ApplicationRecord

  belongs_to :category, optional: true
  belongs_to :user, optional: true
  has_rich_text :rich_description

  scope :by_date, -> { order(date: :desc) }

  paginates_per 50

end
