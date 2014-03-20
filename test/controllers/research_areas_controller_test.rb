require 'test_helper'

class ResearchAreasControllerTest < ActionController::TestCase
  setup do
    @research_area = research_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:research_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create research_area" do
    assert_difference('ResearchArea.count') do
      post :create, research_area: { description: @research_area.description, name: @research_area.name }
    end

    assert_redirected_to research_area_path(assigns(:research_area))
  end

  test "should show research_area" do
    get :show, id: @research_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @research_area
    assert_response :success
  end

  test "should update research_area" do
    patch :update, id: @research_area, research_area: { description: @research_area.description, name: @research_area.name }
    assert_redirected_to research_area_path(assigns(:research_area))
  end

  test "should destroy research_area" do
    assert_difference('ResearchArea.count', -1) do
      delete :destroy, id: @research_area
    end

    assert_redirected_to research_areas_path
  end
end
