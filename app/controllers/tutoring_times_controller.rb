class TutoringTimesController < ApplicationController
  before_action :set_tutoring_time, only: [:show, :edit, :update, :destroy]

  # GET /tutoring_times
  # GET /tutoring_times.json
  def index
    @tutoring_times = TutoringTime.all
  end

  # GET /tutoring_times/1
  # GET /tutoring_times/1.json
  def show
  end

  # GET /tutoring_times/new
  def new
    @tutoring_time = TutoringTime.new
  end

  # GET /tutoring_times/1/edit
  def edit
  end

  # POST /tutoring_times
  # POST /tutoring_times.json
  def create
    @tutoring_time = TutoringTime.new(tutoring_time_params)

    respond_to do |format|
      if @tutoring_time.save
        format.html { redirect_to @tutoring_time, notice: 'Tutoring time was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tutoring_time }
      else
        format.html { render action: 'new' }
        format.json { render json: @tutoring_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutoring_times/1
  # PATCH/PUT /tutoring_times/1.json
  def update
    respond_to do |format|
      if @tutoring_time.update(tutoring_time_params)
        format.html { redirect_to @tutoring_time, notice: 'Tutoring time was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tutoring_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutoring_times/1
  # DELETE /tutoring_times/1.json
  def destroy
    @tutoring_time.destroy
    respond_to do |format|
      format.html { redirect_to tutoring_times_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutoring_time
      @tutoring_time = TutoringTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutoring_time_params
      params.require(:tutoring_time).permit(:ad_id, :time, :reserved)
    end
end
