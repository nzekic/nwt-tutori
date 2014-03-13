require 'test_helper'

class SubjectTutorsControllerTest < ActionController::TestCase
  setup do
    @subject_tutor = subject_tutors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subject_tutors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subject_tutor" do
    assert_difference('SubjectTutor.count') do
      post :create, subject_tutor: { rateperhour: @subject_tutor.rateperhour, subjectID: @subject_tutor.subjectID, userID: @subject_tutor.userID }
    end

    assert_redirected_to subject_tutor_path(assigns(:subject_tutor))
  end

  test "should show subject_tutor" do
    get :show, id: @subject_tutor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subject_tutor
    assert_response :success
  end

  test "should update subject_tutor" do
    patch :update, id: @subject_tutor, subject_tutor: { rateperhour: @subject_tutor.rateperhour, subjectID: @subject_tutor.subjectID, userID: @subject_tutor.userID }
    assert_redirected_to subject_tutor_path(assigns(:subject_tutor))
  end

  test "should destroy subject_tutor" do
    assert_difference('SubjectTutor.count', -1) do
      delete :destroy, id: @subject_tutor
    end

    assert_redirected_to subject_tutors_path
  end
end
