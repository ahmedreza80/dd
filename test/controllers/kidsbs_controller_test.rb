require 'test_helper'

class KidsbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kidsb = kidsbs(:one)
  end

  test "should get index" do
    get kidsbs_url
    assert_response :success
  end

  test "should get new" do
    get new_kidsb_url
    assert_response :success
  end

  test "should create kidsb" do
    assert_difference('Kidsb.count') do
      post kidsbs_url, params: { kidsb: { description: @kidsb.description, price: @kidsb.price, title: @kidsb.title } }
    end

    assert_redirected_to kidsb_url(Kidsb.last)
  end

  test "should show kidsb" do
    get kidsb_url(@kidsb)
    assert_response :success
  end

  test "should get edit" do
    get edit_kidsb_url(@kidsb)
    assert_response :success
  end

  test "should update kidsb" do
    patch kidsb_url(@kidsb), params: { kidsb: { description: @kidsb.description, price: @kidsb.price, title: @kidsb.title } }
    assert_redirected_to kidsb_url(@kidsb)
  end

  test "should destroy kidsb" do
    assert_difference('Kidsb.count', -1) do
      delete kidsb_url(@kidsb)
    end

    assert_redirected_to kidsbs_url
  end
end
