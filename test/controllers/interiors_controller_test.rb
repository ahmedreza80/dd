require 'test_helper'

class InteriorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interior = interiors(:one)
  end

  test "should get index" do
    get interiors_url
    assert_response :success
  end

  test "should get new" do
    get new_interior_url
    assert_response :success
  end

  test "should create interior" do
    assert_difference('Interior.count') do
      post interiors_url, params: { interior: { city: @interior.city, email: @interior.email, mobile: @interior.mobile, name: @interior.name } }
    end

    assert_redirected_to interior_url(Interior.last)
  end

  test "should show interior" do
    get interior_url(@interior)
    assert_response :success
  end

  test "should get edit" do
    get edit_interior_url(@interior)
    assert_response :success
  end

  test "should update interior" do
    patch interior_url(@interior), params: { interior: { city: @interior.city, email: @interior.email, mobile: @interior.mobile, name: @interior.name } }
    assert_redirected_to interior_url(@interior)
  end

  test "should destroy interior" do
    assert_difference('Interior.count', -1) do
      delete interior_url(@interior)
    end

    assert_redirected_to interiors_url
  end
end
