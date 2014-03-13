require 'test_helper'

class SubjectTutorMembersControllerTest < ActionController::TestCase
  setup do
    @subject_tutor_member = subject_tutor_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subject_tutor_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subject_tutor_member" do
    assert_difference('SubjectTutorMember.count') do
      post :create, subject_tutor_member: { subjecttutorID: @subject_tutor_member.subjecttutorID, userID: @subject_tutor_member.userID }
    end

    assert_redirected_to subject_tutor_member_path(assigns(:subject_tutor_member))
  end

  test "should show subject_tutor_member" do
    get :show, id: @subject_tutor_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subject_tutor_member
    assert_response :success
  end

  test "should update subject_tutor_member" do
    patch :update, id: @subject_tutor_member, subject_tutor_member: { subjecttutorID: @subject_tutor_member.subjecttutorID, userID: @subject_tutor_member.userID }
    assert_redirected_to subject_tutor_member_path(assigns(:subject_tutor_member))
  end

  test "should destroy subject_tutor_member" do
    assert_difference('SubjectTutorMember.count', -1) do
      delete :destroy, id: @subject_tutor_member
    end

    assert_redirected_to subject_tutor_members_path
  end
end
