class CafesController < ApplicationController
  before_action :set_cafe, only: [:show, :edit, :update, :destroy]

  # GET /cafes
  # GET /cafes.json
  def index
    @cafes = Cafe.all
  end

  # GET /cafes/1
  # GET /cafes/1.json
  def show
  end

  # GET /cafes/new
  def new
    @cafe = Cafe.new
  end

  # GET /cafes/1/edit
  def edit
  end

  # POST /cafes
  # POST /cafes.json
  def create
    @cafe = Cafe.new(cafe_params)

    respond_to do |format|
      if @cafe.save
        format.html { redirect_to @cafe, notice: 'Cafe was successfully created.' }
        format.json { render :show, status: :created, location: @cafe }
      else
        format.html { render :new }
        format.json { render json: @cafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cafes/1
  # PATCH/PUT /cafes/1.json
  def update
    respond_to do |format|
      if @cafe.update(cafe_params)
        format.html { redirect_to @cafe, notice: 'Cafe was successfully updated.' }
        format.json { render :show, status: :ok, location: @cafe }
      else
        format.html { render :edit }
        format.json { render json: @cafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cafes/1
  # DELETE /cafes/1.json
  def destroy
    @cafe.destroy
    respond_to do |format|
      format.html { redirect_to cafes_url, notice: 'Cafe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cafe
      @cafe = Cafe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cafe_params
      params.require(:cafe).permit(:name)
    end
end
