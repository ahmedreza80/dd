require 'test_helper'

class ThreeseatersofasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @threeseatersofa = threeseatersofas(:one)
  end

  test "should get index" do
    get threeseatersofas_url
    assert_response :success
  end

  test "should get new" do
    get new_threeseatersofa_url
    assert_response :success
  end

  test "should create threeseatersofa" do
    assert_difference('Threeseatersofa.count') do
      post threeseatersofas_url, params: { threeseatersofa: { description: @threeseatersofa.description, price: @threeseatersofa.price, title: @threeseatersofa.title } }
    end

    assert_redirected_to threeseatersofa_url(Threeseatersofa.last)
  end

  test "should show threeseatersofa" do
    get threeseatersofa_url(@threeseatersofa)
    assert_response :success
  end

  test "should get edit" do
    get edit_threeseatersofa_url(@threeseatersofa)
    assert_response :success
  end

  test "should update threeseatersofa" do
    patch threeseatersofa_url(@threeseatersofa), params: { threeseatersofa: { description: @threeseatersofa.description, price: @threeseatersofa.price, title: @threeseatersofa.title } }
    assert_redirected_to threeseatersofa_url(@threeseatersofa)
  end

  test "should destroy threeseatersofa" do
    assert_difference('Threeseatersofa.count', -1) do
      delete threeseatersofa_url(@threeseatersofa)
    end

    assert_redirected_to threeseatersofas_url
  end
end
