class PagesController < ApplicationController

  def home
  end

  def resources
  end

  def suggest_resource
    @resource = Resource.new
  end

end
