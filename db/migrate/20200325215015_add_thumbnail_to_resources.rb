class AddThumbnailToResources < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :thumbnail, :string
  end
end
