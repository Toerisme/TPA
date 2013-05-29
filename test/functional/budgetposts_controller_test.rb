require 'test_helper'

class BudgetpostsControllerTest < ActionController::TestCase
  setup do
    @budgetpost = budgetposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:budgetposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create budgetpost" do
    assert_difference('Budgetpost.count') do
      post :create, budgetpost: {  }
    end

    assert_redirected_to budgetpost_path(assigns(:budgetpost))
  end

  test "should show budgetpost" do
    get :show, id: @budgetpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @budgetpost
    assert_response :success
  end

  test "should update budgetpost" do
    put :update, id: @budgetpost, budgetpost: {  }
    assert_redirected_to budgetpost_path(assigns(:budgetpost))
  end

  test "should destroy budgetpost" do
    assert_difference('Budgetpost.count', -1) do
      delete :destroy, id: @budgetpost
    end

    assert_redirected_to budgetposts_path
  end
end
