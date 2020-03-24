class Resource < ApplicationRecord

  belongs_to :category
  belongs_to :user, optional: true
  has_rich_text :content
  
  scope :by_date, -> { order(date: :desc) }

end
