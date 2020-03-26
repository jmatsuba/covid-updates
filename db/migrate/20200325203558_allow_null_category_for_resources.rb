class AllowNullCategoryForResources < ActiveRecord::Migration[6.0]
  def change
    change_column_null :resources, :category_id, true
  end
end
