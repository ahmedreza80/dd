require 'test_helper'

class HydraulicstoragebsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hydraulicstorageb = hydraulicstoragebs(:one)
  end

  test "should get index" do
    get hydraulicstoragebs_url
    assert_response :success
  end

  test "should get new" do
    get new_hydraulicstorageb_url
    assert_response :success
  end

  test "should create hydraulicstorageb" do
    assert_difference('Hydraulicstorageb.count') do
      post hydraulicstoragebs_url, params: { hydraulicstorageb: { description: @hydraulicstorageb.description, price: @hydraulicstorageb.price, title: @hydraulicstorageb.title } }
    end

    assert_redirected_to hydraulicstorageb_url(Hydraulicstorageb.last)
  end

  test "should show hydraulicstorageb" do
    get hydraulicstorageb_url(@hydraulicstorageb)
    assert_response :success
  end

  test "should get edit" do
    get edit_hydraulicstorageb_url(@hydraulicstorageb)
    assert_response :success
  end

  test "should update hydraulicstorageb" do
    patch hydraulicstorageb_url(@hydraulicstorageb), params: { hydraulicstorageb: { description: @hydraulicstorageb.description, price: @hydraulicstorageb.price, title: @hydraulicstorageb.title } }
    assert_redirected_to hydraulicstorageb_url(@hydraulicstorageb)
  end

  test "should destroy hydraulicstorageb" do
    assert_difference('Hydraulicstorageb.count', -1) do
      delete hydraulicstorageb_url(@hydraulicstorageb)
    end

    assert_redirected_to hydraulicstoragebs_url
  end
end
