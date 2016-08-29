require 'test_helper'

class MarginalizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marginalization = marginalizations(:one)
  end

  test "should get index" do
    get marginalizations_url
    assert_response :success
  end

  test "should get new" do
    get new_marginalization_url
    assert_response :success
  end

  test "should create marginalization" do
    assert_difference('Marginalization.count') do
      post marginalizations_url, params: { marginalization: { act_id: @marginalization.act_id, canton_registro: @marginalization.canton_registro, marginacion: @marginalization.marginacion, ultima_modificacion: @marginalization.ultima_modificacion, user_id: @marginalization.user_id } }
    end

    assert_redirected_to marginalization_url(Marginalization.last)
  end

  test "should show marginalization" do
    get marginalization_url(@marginalization)
    assert_response :success
  end

  test "should get edit" do
    get edit_marginalization_url(@marginalization)
    assert_response :success
  end

  test "should update marginalization" do
    patch marginalization_url(@marginalization), params: { marginalization: { act_id: @marginalization.act_id, canton_registro: @marginalization.canton_registro, marginacion: @marginalization.marginacion, ultima_modificacion: @marginalization.ultima_modificacion, user_id: @marginalization.user_id } }
    assert_redirected_to marginalization_url(@marginalization)
  end

  test "should destroy marginalization" do
    assert_difference('Marginalization.count', -1) do
      delete marginalization_url(@marginalization)
    end

    assert_redirected_to marginalizations_url
  end
end
