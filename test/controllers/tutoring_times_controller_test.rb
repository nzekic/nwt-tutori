require 'test_helper'

class TutoringTimesControllerTest < ActionController::TestCase
  setup do
    @tutoring_time = tutoring_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutoring_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutoring_time" do
    assert_difference('TutoringTime.count') do
      post :create, tutoring_time: { ad_id: @tutoring_time.ad_id, reserved: @tutoring_time.reserved, time: @tutoring_time.time }
    end

    assert_redirected_to tutoring_time_path(assigns(:tutoring_time))
  end

  test "should show tutoring_time" do
    get :show, id: @tutoring_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tutoring_time
    assert_response :success
  end

  test "should update tutoring_time" do
    patch :update, id: @tutoring_time, tutoring_time: { ad_id: @tutoring_time.ad_id, reserved: @tutoring_time.reserved, time: @tutoring_time.time }
    assert_redirected_to tutoring_time_path(assigns(:tutoring_time))
  end

  test "should destroy tutoring_time" do
    assert_difference('TutoringTime.count', -1) do
      delete :destroy, id: @tutoring_time
    end

    assert_redirected_to tutoring_times_path
  end
end
