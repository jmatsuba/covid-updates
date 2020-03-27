class Admin::ResourcesController < Admin::BaseController

  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  def index
    @filterrific = initialize_filterrific(
      Resource,
      params[:filterrific],
      select_options: {
        sorted_by: Resource.options_for_sorted_by,
        with_category_id: Category.options_for_select
      },     
      persistence_id: "shared_key",
      default_filter_params: {},
      available_filters: [ :sorted_by, :search_query, :with_category_id, :with_resources_since ],
      sanitize_params: true
    ) || return

    # .includes(:category) to avoid N+1 issue
    @resources = @filterrific.find.includes(:category).page(params[:page])

    # Respond to html for initial page load and to js for AJAX filter updates.
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
  end

  def new
    @resource = Resource.new
  end

  def edit
  end

  def create
    @resource = Resource.new(resource_params)

    respond_to do |format|
      if @resource.save
        format.html { redirect_to [:admin, @resource], notice: "Resource was successfully created." }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to [:admin, @resource], notice: "Resource was successfully updated." }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to admin_resources_path, notice: "Resource was successfully destroyed." }
      format.json { head :no_content }
    end
  end

private
  def set_resource
    @resource = Resource.find(params[:id])
  end

    def resource_params
      params.require(:resource).permit(:name, :url, :kind, :priority, :category_id, :user_id, :date, :description, :thumbnail, :video_id, :start_time, :rich_description)
    end

end
