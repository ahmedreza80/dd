require 'test_helper'

class DiningtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diningt = diningts(:one)
  end

  test "should get index" do
    get diningts_url
    assert_response :success
  end

  test "should get new" do
    get new_diningt_url
    assert_response :success
  end

  test "should create diningt" do
    assert_difference('Diningt.count') do
      post diningts_url, params: { diningt: { description: @diningt.description, price: @diningt.price, title: @diningt.title } }
    end

    assert_redirected_to diningt_url(Diningt.last)
  end

  test "should show diningt" do
    get diningt_url(@diningt)
    assert_response :success
  end

  test "should get edit" do
    get edit_diningt_url(@diningt)
    assert_response :success
  end

  test "should update diningt" do
    patch diningt_url(@diningt), params: { diningt: { description: @diningt.description, price: @diningt.price, title: @diningt.title } }
    assert_redirected_to diningt_url(@diningt)
  end

  test "should destroy diningt" do
    assert_difference('Diningt.count', -1) do
      delete diningt_url(@diningt)
    end

    assert_redirected_to diningts_url
  end
end
