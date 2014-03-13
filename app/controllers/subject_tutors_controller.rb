class SubjectTutorsController < ApplicationController
  before_action :set_subject_tutor, only: [:show, :edit, :update, :destroy]

  # GET /subject_tutors
  # GET /subject_tutors.json
  def index
    @subject_tutors = SubjectTutor.all
  end

  # GET /subject_tutors/1
  # GET /subject_tutors/1.json
  def show
  end

  # GET /subject_tutors/new
  def new
    @subject_tutor = SubjectTutor.new
  end

  # GET /subject_tutors/1/edit
  def edit
  end

  # POST /subject_tutors
  # POST /subject_tutors.json
  def create
    @subject_tutor = SubjectTutor.new(subject_tutor_params)

    respond_to do |format|
      if @subject_tutor.save
        format.html { redirect_to @subject_tutor, notice: 'Subject tutor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @subject_tutor }
      else
        format.html { render action: 'new' }
        format.json { render json: @subject_tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_tutors/1
  # PATCH/PUT /subject_tutors/1.json
  def update
    respond_to do |format|
      if @subject_tutor.update(subject_tutor_params)
        format.html { redirect_to @subject_tutor, notice: 'Subject tutor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subject_tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_tutors/1
  # DELETE /subject_tutors/1.json
  def destroy
    @subject_tutor.destroy
    respond_to do |format|
      format.html { redirect_to subject_tutors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_tutor
      @subject_tutor = SubjectTutor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_tutor_params
      params.require(:subject_tutor).permit(:subjectID, :userID, :rateperhour)
    end
end
