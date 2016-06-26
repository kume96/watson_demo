require 'test_helper'

class VoiceCategoriesControllerTest < ActionController::TestCase
  setup do
    @voice_category = voice_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voice_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voice_category" do
    assert_difference('VoiceCategory.count') do
      post :create, voice_category: { category: @voice_category.category, end_time: @voice_category.end_time, start_time: @voice_category.start_time }
    end

    assert_redirected_to voice_category_path(assigns(:voice_category))
  end

  test "should show voice_category" do
    get :show, id: @voice_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voice_category
    assert_response :success
  end

  test "should update voice_category" do
    patch :update, id: @voice_category, voice_category: { category: @voice_category.category, end_time: @voice_category.end_time, start_time: @voice_category.start_time }
    assert_redirected_to voice_category_path(assigns(:voice_category))
  end

  test "should destroy voice_category" do
    assert_difference('VoiceCategory.count', -1) do
      delete :destroy, id: @voice_category
    end

    assert_redirected_to voice_categories_path
  end
end
