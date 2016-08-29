require 'test_helper'

class HorizontalPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horizontal_property = horizontal_properties(:one)
  end

  test "should get index" do
    get horizontal_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_horizontal_property_url
    assert_response :success
  end

  test "should create horizontal_property" do
    assert_difference('HorizontalProperty.count') do
      post horizontal_properties_url, params: { horizontal_property: { act_id: @horizontal_property.act_id, alicuota: @horizontal_property.alicuota, comparece_menor: @horizontal_property.comparece_menor, expensas: @horizontal_property.expensas, fecha_acta_notarial: @horizontal_property.fecha_acta_notarial, fecha_adjudicacion: @horizontal_property.fecha_adjudicacion, nombres_tutor: @horizontal_property.nombres_tutor, propiedad: @horizontal_property.propiedad, user_id: @horizontal_property.user_id } }
    end

    assert_redirected_to horizontal_property_url(HorizontalProperty.last)
  end

  test "should show horizontal_property" do
    get horizontal_property_url(@horizontal_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_horizontal_property_url(@horizontal_property)
    assert_response :success
  end

  test "should update horizontal_property" do
    patch horizontal_property_url(@horizontal_property), params: { horizontal_property: { act_id: @horizontal_property.act_id, alicuota: @horizontal_property.alicuota, comparece_menor: @horizontal_property.comparece_menor, expensas: @horizontal_property.expensas, fecha_acta_notarial: @horizontal_property.fecha_acta_notarial, fecha_adjudicacion: @horizontal_property.fecha_adjudicacion, nombres_tutor: @horizontal_property.nombres_tutor, propiedad: @horizontal_property.propiedad, user_id: @horizontal_property.user_id } }
    assert_redirected_to horizontal_property_url(@horizontal_property)
  end

  test "should destroy horizontal_property" do
    assert_difference('HorizontalProperty.count', -1) do
      delete horizontal_property_url(@horizontal_property)
    end

    assert_redirected_to horizontal_properties_url
  end
end
