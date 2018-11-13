require 'test_helper'

class WoodensofasetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @woodensofaset = woodensofasets(:one)
  end

  test "should get index" do
    get woodensofasets_url
    assert_response :success
  end

  test "should get new" do
    get new_woodensofaset_url
    assert_response :success
  end

  test "should create woodensofaset" do
    assert_difference('Woodensofaset.count') do
      post woodensofasets_url, params: { woodensofaset: { description: @woodensofaset.description, price: @woodensofaset.price, title: @woodensofaset.title } }
    end

    assert_redirected_to woodensofaset_url(Woodensofaset.last)
  end

  test "should show woodensofaset" do
    get woodensofaset_url(@woodensofaset)
    assert_response :success
  end

  test "should get edit" do
    get edit_woodensofaset_url(@woodensofaset)
    assert_response :success
  end

  test "should update woodensofaset" do
    patch woodensofaset_url(@woodensofaset), params: { woodensofaset: { description: @woodensofaset.description, price: @woodensofaset.price, title: @woodensofaset.title } }
    assert_redirected_to woodensofaset_url(@woodensofaset)
  end

  test "should destroy woodensofaset" do
    assert_difference('Woodensofaset.count', -1) do
      delete woodensofaset_url(@woodensofaset)
    end

    assert_redirected_to woodensofasets_url
  end
end
