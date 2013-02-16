require 'test_helper'

class DollsControllerTest < ActionController::TestCase
  setup do
    @doll = dolls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dolls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doll" do
    assert_difference('Doll.count') do
      post :create, doll: { city: @doll.city, name: @doll.name, state: @doll.state, tag: @doll.tag }
    end

    assert_redirected_to doll_path(assigns(:doll))
  end

  test "should show doll" do
    get :show, id: @doll
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doll
    assert_response :success
  end

  test "should update doll" do
    put :update, id: @doll, doll: { city: @doll.city, name: @doll.name, state: @doll.state, tag: @doll.tag }
    assert_redirected_to doll_path(assigns(:doll))
  end

  test "should destroy doll" do
    assert_difference('Doll.count', -1) do
      delete :destroy, id: @doll
    end

    assert_redirected_to dolls_path
  end
end
