class Resource < ApplicationRecord

  belongs_to :category, optional: true
  belongs_to :user, optional: true
  has_rich_text :rich_description

  scope :by_date, -> { order(date: :desc) }

  paginates_per 50

  scope :with_category_id, ->(id) { where(category_id: id) }
  scope :approved, -> { where(status: "approved") }
  scope :unapproved, -> { where(status: ["draft", "rejected", "removed", "pending_review"]) }

end
