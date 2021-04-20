class GalleryController < PetReportsController

  def index
    @pet_reports = PetReport.all
  end

  def show
  end

  end