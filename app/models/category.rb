class Category < ApplicationRecord

  has_many :resources, dependent: :nullify

end
