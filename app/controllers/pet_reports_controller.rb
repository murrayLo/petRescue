class PetReportsController < ApplicationController
  before_action :set_pet_report, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: :index #Devise method to ensure user is logged in, while still granting access to index
  
  # GET /pet_reports or /pet_reports.json
  def index
    #@pet_reports = PetReport.all
    @pet_reports = PetReport.search(params[:search])
  end

  # GET /pet_reports/1 or /pet_reports/1.json
  def show
  end

  # GET /pet_reports/new
  def new
    #@pet_report = PetReport.new
    @pet_report = current_user.pet_reports.build

    @breed_dog = [] #create empty array
    @breed_cat = [] #create empty array
    @breeds = Breed.all #call breeds model
    @breeds.each do |b| #loop through each breed in breeds
      @breed_dog.push(b[:dogs]) #push each dog breed into the array
      @breed_cat.push(b[:cats]) #push each cat breed into the array
    end
  end

  # GET /pet_reports/1/edit
  def edit
  end

  # POST /pet_reports or /pet_reports.json
  def create
    #@pet_report = PetReport.new(pet_report_params)
    @pet_report = current_user.pet_reports.build(pet_report_params)

    respond_to do |format|
      if @pet_report.save
        format.html { redirect_to @pet_report, notice: "Pet report was successfully created." }
        format.json { render :show, status: :created, location: @pet_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pet_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_reports/1 or /pet_reports/1.json
  def update
    respond_to do |format|
      if @pet_report.update(pet_report_params)
        format.html { redirect_to @pet_report, notice: "Pet report was successfully updated." }
        format.json { render :show, status: :ok, location: @pet_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pet_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_reports/1 or /pet_reports/1.json
  def destroy
    @pet_report.destroy
    respond_to do |format|
      format.html { redirect_to gallery_index_url, notice: "Pet report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_report
      @pet_report = PetReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_report_params
      params.require(:pet_report).permit(:reporting, :date, :location, :animal, :breed, :colour, :image, :additionalInfo, :user_id)
    end
end
