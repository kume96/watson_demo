require 'test_helper'

class VoiceKeywordsControllerTest < ActionController::TestCase
  setup do
    @voice_keyword = voice_keywords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voice_keywords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voice_keyword" do
    assert_difference('VoiceKeyword.count') do
      post :create, voice_keyword: { keyword: @voice_keyword.keyword, time: @voice_keyword.time }
    end

    assert_redirected_to voice_keyword_path(assigns(:voice_keyword))
  end

  test "should show voice_keyword" do
    get :show, id: @voice_keyword
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voice_keyword
    assert_response :success
  end

  test "should update voice_keyword" do
    patch :update, id: @voice_keyword, voice_keyword: { keyword: @voice_keyword.keyword, time: @voice_keyword.time }
    assert_redirected_to voice_keyword_path(assigns(:voice_keyword))
  end

  test "should destroy voice_keyword" do
    assert_difference('VoiceKeyword.count', -1) do
      delete :destroy, id: @voice_keyword
    end

    assert_redirected_to voice_keywords_path
  end
end
