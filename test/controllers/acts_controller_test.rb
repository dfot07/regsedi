require 'test_helper'

class ActsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @act = acts(:one)
  end

  test "should get index" do
    get acts_url
    assert_response :success
  end

  test "should get new" do
    get new_act_url
    assert_response :success
  end

  test "should create act" do
    assert_difference('Act.count') do
      post acts_url, params: { act: { cuantia: @act.cuantia, descripcion: @act.descripcion, especificacion: @act.especificacion, fecha_inscripcion: @act.fecha_inscripcion, fecha_repertorio: @act.fecha_repertorio, inscripcion: @act.inscripcion, libro: @act.libro, repertorio: @act.repertorio, tipo: @act.tipo, unidad: @act.unidad } }
    end

    assert_redirected_to act_url(Act.last)
  end

  test "should show act" do
    get act_url(@act)
    assert_response :success
  end

  test "should get edit" do
    get edit_act_url(@act)
    assert_response :success
  end

  test "should update act" do
    patch act_url(@act), params: { act: { cuantia: @act.cuantia, descripcion: @act.descripcion, especificacion: @act.especificacion, fecha_inscripcion: @act.fecha_inscripcion, fecha_repertorio: @act.fecha_repertorio, inscripcion: @act.inscripcion, libro: @act.libro, repertorio: @act.repertorio, tipo: @act.tipo, unidad: @act.unidad } }
    assert_redirected_to act_url(@act)
  end

  test "should destroy act" do
    assert_difference('Act.count', -1) do
      delete act_url(@act)
    end

    assert_redirected_to acts_url
  end
end
