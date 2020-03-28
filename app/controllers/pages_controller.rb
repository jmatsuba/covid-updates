class PagesController < ApplicationController

  def home
  end

  def resources
  end

  def suggest_resource
    @resource = Resource.new
  end

  def region_home
    @category = Category.find_by!(slug: params[:region_slug])
    @resources = Resource.with_category_id(@category.id).approved
  end

end
