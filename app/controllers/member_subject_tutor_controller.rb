class MemberSubjectTutorsController < ApplicationController
  before_action :set_member_subject_tutor, only: [:show, :edit, :update, :destroy]

  # GET /subject_tutor_members
  # GET /subject_tutor_members.json
  def index
    @member_subject_tutors = MemberSubjectTutor.all
  end

  # GET /subject_tutor_members/1
  # GET /subject_tutor_members/1.json
  def show
  end

  # GET /subject_tutor_members/new
  def new
    @member_subject_tutor = MemberSubjectTutor.new
  end

  # GET /subject_tutor_members/1/edit
  def edit
  end

  # POST /subject_tutor_members
  # POST /subject_tutor_members.json
  def create
    @member_subject_tutor = MemberSubjectTutor.new(member_subject_tutor_params)

    respond_to do |format|
      if @member_subject_tutor.save
        format.html { redirect_to @member_subject_tutor, notice: 'Subject tutor member was successfully created.' }
        format.json { render action: 'show', status: :created, location: @member_subject_tutor }
      else
        format.html { render action: 'new' }
        format.json { render json: @member_subject_tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_tutor_members/1
  # PATCH/PUT /subject_tutor_members/1.json
  def update
    respond_to do |format|
      if @member_subject_tutor.update(member_subject_tutor_params)
        format.html { redirect_to @member_subject_tutor, notice: 'Member subject tutor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @member_subject_tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_tutor_members/1
  # DELETE /subject_tutor_members/1.json
  def destroy
    @member_subject_tutor.destroy
    respond_to do |format|
      format.html { redirect_to member_subject_tutors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_subject_tutor
      @member_subject_tutor = MemberSubjectTutor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_subject_tutor_params
      params.require(:member_subject_tutor).permit(:tutorsubjectID, :userID)
    end
end
