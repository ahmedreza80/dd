require 'test_helper'

class SofacumbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sofacumb = sofacumbs(:one)
  end

  test "should get index" do
    get sofacumbs_url
    assert_response :success
  end

  test "should get new" do
    get new_sofacumb_url
    assert_response :success
  end

  test "should create sofacumb" do
    assert_difference('Sofacumb.count') do
      post sofacumbs_url, params: { sofacumb: { description: @sofacumb.description, price: @sofacumb.price, title: @sofacumb.title } }
    end

    assert_redirected_to sofacumb_url(Sofacumb.last)
  end

  test "should show sofacumb" do
    get sofacumb_url(@sofacumb)
    assert_response :success
  end

  test "should get edit" do
    get edit_sofacumb_url(@sofacumb)
    assert_response :success
  end

  test "should update sofacumb" do
    patch sofacumb_url(@sofacumb), params: { sofacumb: { description: @sofacumb.description, price: @sofacumb.price, title: @sofacumb.title } }
    assert_redirected_to sofacumb_url(@sofacumb)
  end

  test "should destroy sofacumb" do
    assert_difference('Sofacumb.count', -1) do
      delete sofacumb_url(@sofacumb)
    end

    assert_redirected_to sofacumbs_url
  end
end
