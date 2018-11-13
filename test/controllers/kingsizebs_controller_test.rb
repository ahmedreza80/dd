require 'test_helper'

class KingsizebsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kingsizeb = kingsizebs(:one)
  end

  test "should get index" do
    get kingsizebs_url
    assert_response :success
  end

  test "should get new" do
    get new_kingsizeb_url
    assert_response :success
  end

  test "should create kingsizeb" do
    assert_difference('Kingsizeb.count') do
      post kingsizebs_url, params: { kingsizeb: { description: @kingsizeb.description, price: @kingsizeb.price, title: @kingsizeb.title } }
    end

    assert_redirected_to kingsizeb_url(Kingsizeb.last)
  end

  test "should show kingsizeb" do
    get kingsizeb_url(@kingsizeb)
    assert_response :success
  end

  test "should get edit" do
    get edit_kingsizeb_url(@kingsizeb)
    assert_response :success
  end

  test "should update kingsizeb" do
    patch kingsizeb_url(@kingsizeb), params: { kingsizeb: { description: @kingsizeb.description, price: @kingsizeb.price, title: @kingsizeb.title } }
    assert_redirected_to kingsizeb_url(@kingsizeb)
  end

  test "should destroy kingsizeb" do
    assert_difference('Kingsizeb.count', -1) do
      delete kingsizeb_url(@kingsizeb)
    end

    assert_redirected_to kingsizebs_url
  end
end
