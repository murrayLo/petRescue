class GalleryController < PetReportsController

  def index
    #@pet_reports = PetReport.all
    @pet_reports = PetReport.search(params[:search])
  end

  def show
  end

  end