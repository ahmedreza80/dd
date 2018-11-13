require 'test_helper'

class TwoseatersofasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twoseatersofa = twoseatersofas(:one)
  end

  test "should get index" do
    get twoseatersofas_url
    assert_response :success
  end

  test "should get new" do
    get new_twoseatersofa_url
    assert_response :success
  end

  test "should create twoseatersofa" do
    assert_difference('Twoseatersofa.count') do
      post twoseatersofas_url, params: { twoseatersofa: { description: @twoseatersofa.description, price: @twoseatersofa.price, title: @twoseatersofa.title } }
    end

    assert_redirected_to twoseatersofa_url(Twoseatersofa.last)
  end

  test "should show twoseatersofa" do
    get twoseatersofa_url(@twoseatersofa)
    assert_response :success
  end

  test "should get edit" do
    get edit_twoseatersofa_url(@twoseatersofa)
    assert_response :success
  end

  test "should update twoseatersofa" do
    patch twoseatersofa_url(@twoseatersofa), params: { twoseatersofa: { description: @twoseatersofa.description, price: @twoseatersofa.price, title: @twoseatersofa.title } }
    assert_redirected_to twoseatersofa_url(@twoseatersofa)
  end

  test "should destroy twoseatersofa" do
    assert_difference('Twoseatersofa.count', -1) do
      delete twoseatersofa_url(@twoseatersofa)
    end

    assert_redirected_to twoseatersofas_url
  end
end
