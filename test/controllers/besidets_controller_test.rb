require 'test_helper'

class BesidetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @besidet = besidets(:one)
  end

  test "should get index" do
    get besidets_url
    assert_response :success
  end

  test "should get new" do
    get new_besidet_url
    assert_response :success
  end

  test "should create besidet" do
    assert_difference('Besidet.count') do
      post besidets_url, params: { besidet: { description: @besidet.description, price: @besidet.price, title: @besidet.title } }
    end

    assert_redirected_to besidet_url(Besidet.last)
  end

  test "should show besidet" do
    get besidet_url(@besidet)
    assert_response :success
  end

  test "should get edit" do
    get edit_besidet_url(@besidet)
    assert_response :success
  end

  test "should update besidet" do
    patch besidet_url(@besidet), params: { besidet: { description: @besidet.description, price: @besidet.price, title: @besidet.title } }
    assert_redirected_to besidet_url(@besidet)
  end

  test "should destroy besidet" do
    assert_difference('Besidet.count', -1) do
      delete besidet_url(@besidet)
    end

    assert_redirected_to besidets_url
  end
end
