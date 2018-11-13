require 'test_helper'

class SinglebsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @singleb = singlebs(:one)
  end

  test "should get index" do
    get singlebs_url
    assert_response :success
  end

  test "should get new" do
    get new_singleb_url
    assert_response :success
  end

  test "should create singleb" do
    assert_difference('Singleb.count') do
      post singlebs_url, params: { singleb: { description: @singleb.description, price: @singleb.price, title: @singleb.title } }
    end

    assert_redirected_to singleb_url(Singleb.last)
  end

  test "should show singleb" do
    get singleb_url(@singleb)
    assert_response :success
  end

  test "should get edit" do
    get edit_singleb_url(@singleb)
    assert_response :success
  end

  test "should update singleb" do
    patch singleb_url(@singleb), params: { singleb: { description: @singleb.description, price: @singleb.price, title: @singleb.title } }
    assert_redirected_to singleb_url(@singleb)
  end

  test "should destroy singleb" do
    assert_difference('Singleb.count', -1) do
      delete singleb_url(@singleb)
    end

    assert_redirected_to singlebs_url
  end
end
