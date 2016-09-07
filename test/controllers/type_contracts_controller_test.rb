require 'test_helper'

class TypeContractsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_contract = type_contracts(:one)
  end

  test "should get index" do
    get type_contracts_url
    assert_response :success
  end

  test "should get new" do
    get new_type_contract_url
    assert_response :success
  end

  test "should create type_contract" do
    assert_difference('TypeContract.count') do
      post type_contracts_url, params: { type_contract: { contract_id: @type_contract.contract_id, descripcion: @type_contract.descripcion, user_id: @type_contract.user_id } }
    end

    assert_redirected_to type_contract_url(TypeContract.last)
  end

  test "should show type_contract" do
    get type_contract_url(@type_contract)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_contract_url(@type_contract)
    assert_response :success
  end

  test "should update type_contract" do
    patch type_contract_url(@type_contract), params: { type_contract: { contract_id: @type_contract.contract_id, descripcion: @type_contract.descripcion, user_id: @type_contract.user_id } }
    assert_redirected_to type_contract_url(@type_contract)
  end

  test "should destroy type_contract" do
    assert_difference('TypeContract.count', -1) do
      delete type_contract_url(@type_contract)
    end

    assert_redirected_to type_contracts_url
  end
end
