class CatalogsController < ApplicationController
  before_action :do_we_have_a_logged_in_admin_user?
  before_action :set_catalog, only: [:show, :edit, :update, :destroy]

  # GET /catalogs
  # GET /catalogs.json
  def index
    @catalogs = Catalog.all
  end

  # GET /catalogs/1
  # GET /catalogs/1.json
  def show
  end

  # GET /catalogs/new
  def new
    @catalog = Catalog.new
    @catalog.images.build
  end

  # GET /catalogs/1/edit
  def edit
  end

  # POST /catalogs
  # POST /catalogs.json
  def create
    @catalog = Catalog.new(catalog_params.permit(:name, :active))

    respond_to do |format|
      if @catalog.save

        # Now Lets save some images
        if params["catalog"]["images"]
          params["catalog"]["images"]["image"].each do |image|
            Image.create(imageable_id: @catalog.id, imageable_type: "Catalog", image: image)
          end
        end

        format.html { redirect_to catalogs_path, notice: 'Catalog was successfully created.' }
        format.json { render :show, status: :created, location: @catalog }
      else
        format.html { render :new }
        format.json { render json: @catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/1
  # PATCH/PUT /catalogs/1.json
  def update
    respond_to do |format|
      if @catalog.update(catalog_params)
        format.html { redirect_to @catalog, notice: 'Catalog was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalog }
      else
        format.html { render :edit }
        format.json { render json: @catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/1
  # DELETE /catalogs/1.json
  def destroy
    @catalog.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_url, notice: 'Catalog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalog
      @catalog = Catalog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalog_params
      params[:catalog].permit(:name, :active, images: [:image]) 
    end

    def do_we_have_a_logged_in_admin_user?
      unless current_user and current_user.admin
        flash[:notice] = "You need to be logged in as an administrator to access this feature"
        redirect_to root_path 
      end
    end
end
