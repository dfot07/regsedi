require 'test_helper'

class EffectivePossessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @effective_possession = effective_possessions(:one)
  end

  test "should get index" do
    get effective_possessions_url
    assert_response :success
  end

  test "should get new" do
    get new_effective_possession_url
    assert_response :success
  end

  test "should create effective_possession" do
    assert_difference('EffectivePossession.count') do
      post effective_possessions_url, params: { effective_possession: { act_id: @effective_possession.act_id, causante: @effective_possession.causante, conyuge_sobreviviente: @effective_possession.conyuge_sobreviviente, fecha_defuncion: @effective_possession.fecha_defuncion, heredero: @effective_possession.heredero, numero_acuerdo: @effective_possession.numero_acuerdo, user_id: @effective_possession.user_id } }
    end

    assert_redirected_to effective_possession_url(EffectivePossession.last)
  end

  test "should show effective_possession" do
    get effective_possession_url(@effective_possession)
    assert_response :success
  end

  test "should get edit" do
    get edit_effective_possession_url(@effective_possession)
    assert_response :success
  end

  test "should update effective_possession" do
    patch effective_possession_url(@effective_possession), params: { effective_possession: { act_id: @effective_possession.act_id, causante: @effective_possession.causante, conyuge_sobreviviente: @effective_possession.conyuge_sobreviviente, fecha_defuncion: @effective_possession.fecha_defuncion, heredero: @effective_possession.heredero, numero_acuerdo: @effective_possession.numero_acuerdo, user_id: @effective_possession.user_id } }
    assert_redirected_to effective_possession_url(@effective_possession)
  end

  test "should destroy effective_possession" do
    assert_difference('EffectivePossession.count', -1) do
      delete effective_possession_url(@effective_possession)
    end

    assert_redirected_to effective_possessions_url
  end
end
