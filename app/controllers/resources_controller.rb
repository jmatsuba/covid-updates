class ResourcesController < ApplicationController
  def create
    resource = Resource.new resource_params
    resource.category = Category.find_by(kind: 'general')
    resource.status = 'unapproved'
    resource.save!

    redirect_to '/thanks'
  end

private
  def resource_params
    params.require(:resource).permit(:name, :url, :kind, :rich_description)
  end


end
