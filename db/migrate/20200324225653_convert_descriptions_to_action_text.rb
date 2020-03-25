class ConvertDescriptionsToActionText < ActiveRecord::Migration[6.0]
  def change
    Resource.all.each do |resource|
      resource.rich_description = resource.description
      resource.save!
    end
  end
end
