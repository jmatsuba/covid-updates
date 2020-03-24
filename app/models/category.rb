class Category < ApplicationRecord

  has_many :resources, dependent: :destroy

end
