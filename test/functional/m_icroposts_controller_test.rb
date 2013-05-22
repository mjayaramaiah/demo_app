require 'test_helper'

class MIcropostsControllerTest < ActionController::TestCase
  setup do
    @m_icropost = m_icroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_icroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_icropost" do
    assert_difference('MIcropost.count') do
      post :create, m_icropost: { content: @m_icropost.content, user_id: @m_icropost.user_id }
    end

    assert_redirected_to m_icropost_path(assigns(:m_icropost))
  end

  test "should show m_icropost" do
    get :show, id: @m_icropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_icropost
    assert_response :success
  end

  test "should update m_icropost" do
    put :update, id: @m_icropost, m_icropost: { content: @m_icropost.content, user_id: @m_icropost.user_id }
    assert_redirected_to m_icropost_path(assigns(:m_icropost))
  end

  test "should destroy m_icropost" do
    assert_difference('MIcropost.count', -1) do
      delete :destroy, id: @m_icropost
    end

    assert_redirected_to m_icroposts_path
  end
end
