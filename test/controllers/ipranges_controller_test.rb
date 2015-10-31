require 'test_helper'

class IprangesControllerTest < ActionController::TestCase
  setup do
    @iprange = ipranges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ipranges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iprange" do
    assert_difference('Iprange.count') do
      post :create, iprange: { crange: @iprange.crange, end: @iprange.end, start: @iprange.start }
    end

    assert_redirected_to iprange_path(assigns(:iprange))
  end

  test "should show iprange" do
    get :show, id: @iprange
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iprange
    assert_response :success
  end

  test "should update iprange" do
    patch :update, id: @iprange, iprange: { crange: @iprange.crange, end: @iprange.end, start: @iprange.start }
    assert_redirected_to iprange_path(assigns(:iprange))
  end

  test "should destroy iprange" do
    assert_difference('Iprange.count', -1) do
      delete :destroy, id: @iprange
    end

    assert_redirected_to ipranges_path
  end
end
