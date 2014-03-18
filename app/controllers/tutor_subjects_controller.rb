class TutorSubjectsController < ApplicationController
  before_action :set_tutor_subject, only: [:show, :edit, :update, :destroy]

  # GET /subject_tutors
  # GET /subject_tutors.json
  def index
    @tutor_subjects = TutorSubject.all
  end

  # GET /subject_tutors/1
  # GET /subject_tutors/1.json
  def show
  end

  # GET /subject_tutors/new
  def new
    @tutor_subject = TutorSubject.new
  end

  # GET /subject_tutors/1/edit
  def edit
  end

  # POST /subject_tutors
  # POST /subject_tutors.json
  def create
    @tutor_subject = TutorSubject.new(tutor_subject_params)

    respond_to do |format|
      if @tutor_subject.save
        format.html { redirect_to @tutor_subject, notice: 'Subject tutor was successfully created.' }
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
      if @tutor_subject.update(tutor_subject_params)
        format.html { redirect_to @tutor_subject, notice: 'Subject tutor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tutor_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_tutors/1
  # DELETE /subject_tutors/1.json
  def destroy
    @tutor_subject.destroy
    respond_to do |format|
      format.html { redirect_to tutor_subjects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutor_subject
      @tutor_subject = TutorSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutor_subject_params
      params.require(:tutor_subject).permit(:subjectID, :userID, :rateperhour)
    end
end
