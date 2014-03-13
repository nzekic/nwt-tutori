class SubjectTutorMembersController < ApplicationController
  before_action :set_subject_tutor_member, only: [:show, :edit, :update, :destroy]

  # GET /subject_tutor_members
  # GET /subject_tutor_members.json
  def index
    @subject_tutor_members = SubjectTutorMember.all
  end

  # GET /subject_tutor_members/1
  # GET /subject_tutor_members/1.json
  def show
  end

  # GET /subject_tutor_members/new
  def new
    @subject_tutor_member = SubjectTutorMember.new
  end

  # GET /subject_tutor_members/1/edit
  def edit
  end

  # POST /subject_tutor_members
  # POST /subject_tutor_members.json
  def create
    @subject_tutor_member = SubjectTutorMember.new(subject_tutor_member_params)

    respond_to do |format|
      if @subject_tutor_member.save
        format.html { redirect_to @subject_tutor_member, notice: 'Subject tutor member was successfully created.' }
        format.json { render action: 'show', status: :created, location: @subject_tutor_member }
      else
        format.html { render action: 'new' }
        format.json { render json: @subject_tutor_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_tutor_members/1
  # PATCH/PUT /subject_tutor_members/1.json
  def update
    respond_to do |format|
      if @subject_tutor_member.update(subject_tutor_member_params)
        format.html { redirect_to @subject_tutor_member, notice: 'Subject tutor member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subject_tutor_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_tutor_members/1
  # DELETE /subject_tutor_members/1.json
  def destroy
    @subject_tutor_member.destroy
    respond_to do |format|
      format.html { redirect_to subject_tutor_members_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_tutor_member
      @subject_tutor_member = SubjectTutorMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_tutor_member_params
      params.require(:subject_tutor_member).permit(:subjecttutorID, :userID)
    end
end
