require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post properties_url, params: { property: { act_id: @property.act_id, canton: @property.canton, clave_catastral: @property.clave_catastral, descripcion: @property.descripcion, lindero: @property.lindero, numero_predio: @property.numero_predio, parroquia: @property.parroquia, provincia: @property.provincia, superficie: @property.superficie, ubicacion: @property.ubicacion, user_id: @property.user_id, zona: @property.zona } }
    end

    assert_redirected_to property_url(Property.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { act_id: @property.act_id, canton: @property.canton, clave_catastral: @property.clave_catastral, descripcion: @property.descripcion, lindero: @property.lindero, numero_predio: @property.numero_predio, parroquia: @property.parroquia, provincia: @property.provincia, superficie: @property.superficie, ubicacion: @property.ubicacion, user_id: @property.user_id, zona: @property.zona } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
