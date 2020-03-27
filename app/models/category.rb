class Category < ApplicationRecord

  has_many :resources, dependent: :nullify

  def self.options_for_select
    order("LOWER(name)").map { |category| [category.name, category.id] }
  end

end
