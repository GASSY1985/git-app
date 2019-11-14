class ArtriclesController < ApplicationController
  before_action :set_artricle, only: [:show, :edit, :update, :destroy]

  # GET /artricles
  # GET /artricles.json
  def index
    @artricles = Artricle.all
  end

  # GET /artricles/1
  # GET /artricles/1.json
  def show
  end

  # GET /artricles/new
  def new
    @artricle = Artricle.new
  end

  # GET /artricles/1/edit
  def edit
  end

  # POST /artricles
  # POST /artricles.json
  def create
    @artricle = Artricle.new(artricle_params)

    respond_to do |format|
      if @artricle.save
        format.html { redirect_to @artricle, notice: 'Artricle was successfully created.' }
        format.json { render :show, status: :created, location: @artricle }
      else
        format.html { render :new }
        format.json { render json: @artricle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artricles/1
  # PATCH/PUT /artricles/1.json
  def update
    respond_to do |format|
      if @artricle.update(artricle_params)
        format.html { redirect_to @artricle, notice: 'Artricle was successfully updated.' }
        format.json { render :show, status: :ok, location: @artricle }
      else
        format.html { render :edit }
        format.json { render json: @artricle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artricles/1
  # DELETE /artricles/1.json
  def destroy
    @artricle.destroy
    respond_to do |format|
      format.html { redirect_to artricles_url, notice: 'Artricle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artricle
      @artricle = Artricle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artricle_params
      params.require(:artricle).permit(:title, :author, :text)
    end
end
