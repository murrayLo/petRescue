class LostReportsController < ApplicationController
  before_action :set_lost_report, only: %i[ show edit update destroy ]

  # GET /lost_reports or /lost_reports.json
  def index
    @lost_reports = LostReport.all
  end

  # GET /lost_reports/1 or /lost_reports/1.json
  def show
  end

  # GET /lost_reports/new
  def new
    @lost_report = LostReport.new
  end

  # GET /lost_reports/1/edit
  def edit
  end

  # POST /lost_reports or /lost_reports.json
  def create
    @lost_report = LostReport.new(lost_report_params)

    respond_to do |format|
      if @lost_report.save
        format.html { redirect_to @lost_report, notice: "Lost report was successfully created." }
        format.json { render :show, status: :created, location: @lost_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lost_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lost_reports/1 or /lost_reports/1.json
  def update
    respond_to do |format|
      if @lost_report.update(lost_report_params)
        format.html { redirect_to @lost_report, notice: "Lost report was successfully updated." }
        format.json { render :show, status: :ok, location: @lost_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lost_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lost_reports/1 or /lost_reports/1.json
  def destroy
    @lost_report.destroy
    respond_to do |format|
      format.html { redirect_to lost_reports_url, notice: "Lost report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lost_report
      @lost_report = LostReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lost_report_params
      params.require(:lost_report).permit(:date, :location, :animal, :breed, :colour, :image, :additionalInfo, :reporter)
    end
end
