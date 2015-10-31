require 'test_helper'

class ScanhostsControllerTest < ActionController::TestCase
  setup do
    @scanhost = scanhosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scanhosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scanhost" do
    assert_difference('Scanhost.count') do
      post :create, scanhost: {  }
    end

    assert_redirected_to scanhost_path(assigns(:scanhost))
  end

  test "should show scanhost" do
    get :show, id: @scanhost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scanhost
    assert_response :success
  end

  test "should update scanhost" do
    patch :update, id: @scanhost, scanhost: {  }
    assert_redirected_to scanhost_path(assigns(:scanhost))
  end

  test "should destroy scanhost" do
    assert_difference('Scanhost.count', -1) do
      delete :destroy, id: @scanhost
    end

    assert_redirected_to scanhosts_path
  end
end
