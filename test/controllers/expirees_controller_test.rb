require 'test_helper'

class ExpireesControllerTest < ActionController::TestCase
  setup do
    @expiree = expirees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expirees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expiree" do
    assert_difference('Expiree.count') do
      post :create, expiree: { name: @expiree.name, score: @expiree.score }
    end

    assert_redirected_to expiree_path(assigns(:expiree))
  end

  test "should show expiree" do
    get :show, id: @expiree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expiree
    assert_response :success
  end

  test "should update expiree" do
    patch :update, id: @expiree, expiree: { name: @expiree.name, score: @expiree.score }
    assert_redirected_to expiree_path(assigns(:expiree))
  end

  test "should destroy expiree" do
    assert_difference('Expiree.count', -1) do
      delete :destroy, id: @expiree
    end

    assert_redirected_to expirees_path
  end
end
