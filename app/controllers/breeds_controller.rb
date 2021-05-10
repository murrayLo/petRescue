class BreedsController < ApplicationController
  before_action :set_breed, only: %i[ show edit update destroy ]

  # GET /breeds or /breeds.json
  def index
    @breeds = Breed.all
  end

  # GET /breeds/1 or /breeds/1.json
  def show
  end

  # GET /breeds/new
  def new
    @breed = Breed.new
  end

  # GET /breeds/1/edit
  def edit
  end

  # POST /breeds or /breeds.json
  def create
    @breed = Breed.new(breed_params)

    respond_to do |format|
      if @breed.save
        format.html { redirect_to @breed, notice: "Breed was successfully created." }
        format.json { render :show, status: :created, location: @breed }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @breed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /breeds/1 or /breeds/1.json
  def update
    respond_to do |format|
      if @breed.update(breed_params)
        format.html { redirect_to @breed, notice: "Breed was successfully updated." }
        format.json { render :show, status: :ok, location: @breed }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @breed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breeds/1 or /breeds/1.json
  def destroy
    @breed.destroy
    respond_to do |format|
      format.html { redirect_to breeds_url, notice: "Breed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breed
      @breed = Breed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def breed_params
      params.require(:breed).permit(:dogs, :cats)
    end
end
