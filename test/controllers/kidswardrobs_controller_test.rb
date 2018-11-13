require 'test_helper'

class KidswardrobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kidswardrob = kidswardrobs(:one)
  end

  test "should get index" do
    get kidswardrobs_url
    assert_response :success
  end

  test "should get new" do
    get new_kidswardrob_url
    assert_response :success
  end

  test "should create kidswardrob" do
    assert_difference('Kidswardrob.count') do
      post kidswardrobs_url, params: { kidswardrob: { description: @kidswardrob.description, price: @kidswardrob.price, title: @kidswardrob.title } }
    end

    assert_redirected_to kidswardrob_url(Kidswardrob.last)
  end

  test "should show kidswardrob" do
    get kidswardrob_url(@kidswardrob)
    assert_response :success
  end

  test "should get edit" do
    get edit_kidswardrob_url(@kidswardrob)
    assert_response :success
  end

  test "should update kidswardrob" do
    patch kidswardrob_url(@kidswardrob), params: { kidswardrob: { description: @kidswardrob.description, price: @kidswardrob.price, title: @kidswardrob.title } }
    assert_redirected_to kidswardrob_url(@kidswardrob)
  end

  test "should destroy kidswardrob" do
    assert_difference('Kidswardrob.count', -1) do
      delete kidswardrob_url(@kidswardrob)
    end

    assert_redirected_to kidswardrobs_url
  end
end
