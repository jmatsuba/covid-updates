class Admin::BaseController < ApplicationController


  layout "admin"

  before_action :authenticate_user!

  def admin_home
  end

end
