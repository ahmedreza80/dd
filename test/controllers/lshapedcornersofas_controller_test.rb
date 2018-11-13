require 'test_helper'

class LshapedcornersofasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lshapedcornersofa = lshapedcornersofas(:one)
  end

  test "should get index" do
    get lshapedcornersofas_url
    assert_response :success
  end

  test "should get new" do
    get new_lshapedcornersofa_url
    assert_response :success
  end

  test "should create lshapedcornersofa" do
    assert_difference('Lshapedcornersofa.count') do
      post lshapedcornersofas_url, params: { lshapedcornersofa: { description: @lshapedcornersofa.description, price: @lshapedcornersofa.price, title: @lshapedcornersofa.title } }
    end

    assert_redirected_to lshapedcornersofa_url(Lshapedcornersofa.last)
  end

  test "should show lshapedcornersofa" do
    get lshapedcornersofa_url(@lshapedcornersofa)
    assert_response :success
  end

  test "should get edit" do
    get edit_lshapedcornersofa_url(@lshapedcornersofa)
    assert_response :success
  end

  test "should update lshapedcornersofa" do
    patch lshapedcornersofa_url(@lshapedcornersofa), params: { lshapedcornersofa: { description: @lshapedcornersofa.description, price: @lshapedcornersofa.price, title: @lshapedcornersofa.title } }
    assert_redirected_to lshapedcornersofa_url(@lshapedcornersofa)
  end

  test "should destroy lshapedcornersofa" do
    assert_difference('Lshapedcornersofa.count', -1) do
      delete lshapedcornersofa_url(@lshapedcornersofa)
    end

    assert_redirected_to lshapedcornersofas_url
  end
end
