class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]
    
  before_action :require_user, except: [:index, :show] 
    
  before_action :require_active, only: [:new, :show, :destroy, :index]  

  # GET /images
  # GET /images.json
  def index
     @images = Image.paginate(page: params[:page], per_page: 5)  
  end

  # GET /images/1
  # GET /images/1.json
  def show
      @image = Image.find(params[:id])
      
  end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images
  # POST /images.json
  def create
    @image = Image.new(image_params)
    @image.user = current_user
      
    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'Image was successfully created.' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to images_url, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:name, :picture, :user_id, :username)
    end
    
    private
        
    def require_active

       if !logged_in?
           flash[:danger] = "Only active users can perform that action"
           redirect_to root_path
       end
    end
end
