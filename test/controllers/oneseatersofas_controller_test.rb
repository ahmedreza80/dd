require 'test_helper'

class OneseatersofasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oneseatersofa = oneseatersofas(:one)
  end

  test "should get index" do
    get oneseatersofas_url
    assert_response :success
  end

  test "should get new" do
    get new_oneseatersofa_url
    assert_response :success
  end

  test "should create oneseatersofa" do
    assert_difference('Oneseatersofa.count') do
      post oneseatersofas_url, params: { oneseatersofa: { description: @oneseatersofa.description, price: @oneseatersofa.price, title: @oneseatersofa.title } }
    end

    assert_redirected_to oneseatersofa_url(Oneseatersofa.last)
  end

  test "should show oneseatersofa" do
    get oneseatersofa_url(@oneseatersofa)
    assert_response :success
  end

  test "should get edit" do
    get edit_oneseatersofa_url(@oneseatersofa)
    assert_response :success
  end

  test "should update oneseatersofa" do
    patch oneseatersofa_url(@oneseatersofa), params: { oneseatersofa: { description: @oneseatersofa.description, price: @oneseatersofa.price, title: @oneseatersofa.title } }
    assert_redirected_to oneseatersofa_url(@oneseatersofa)
  end

  test "should destroy oneseatersofa" do
    assert_difference('Oneseatersofa.count', -1) do
      delete oneseatersofa_url(@oneseatersofa)
    end

    assert_redirected_to oneseatersofas_url
  end
end
