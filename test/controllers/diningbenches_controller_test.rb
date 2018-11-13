require 'test_helper'

class DiningbenchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diningbench = diningbenches(:one)
  end

  test "should get index" do
    get diningbenches_url
    assert_response :success
  end

  test "should get new" do
    get new_diningbench_url
    assert_response :success
  end

  test "should create diningbench" do
    assert_difference('Diningbench.count') do
      post diningbenches_url, params: { diningbench: { description: @diningbench.description, price: @diningbench.price, title: @diningbench.title } }
    end

    assert_redirected_to diningbench_url(Diningbench.last)
  end

  test "should show diningbench" do
    get diningbench_url(@diningbench)
    assert_response :success
  end

  test "should get edit" do
    get edit_diningbench_url(@diningbench)
    assert_response :success
  end

  test "should update diningbench" do
    patch diningbench_url(@diningbench), params: { diningbench: { description: @diningbench.description, price: @diningbench.price, title: @diningbench.title } }
    assert_redirected_to diningbench_url(@diningbench)
  end

  test "should destroy diningbench" do
    assert_difference('Diningbench.count', -1) do
      delete diningbench_url(@diningbench)
    end

    assert_redirected_to diningbenches_url
  end
end
