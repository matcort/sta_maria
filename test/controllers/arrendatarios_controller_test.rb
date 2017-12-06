require 'test_helper'

class ArrendatariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arrendatario = arrendatarios(:one)
  end

  test "should get index" do
    get arrendatarios_url
    assert_response :success
  end

  test "should get new" do
    get new_arrendatario_url
    assert_response :success
  end

  test "should create arrendatario" do
    assert_difference('Arrendatario.count') do
      post arrendatarios_url, params: { arrendatario: { mail: @arrendatario.mail, nombre: @arrendatario.nombre, password_digest: @arrendatario.password_digest, rut: @arrendatario.rut, telefono: @arrendatario.telefono } }
    end

    assert_redirected_to arrendatario_url(Arrendatario.last)
  end

  test "should show arrendatario" do
    get arrendatario_url(@arrendatario)
    assert_response :success
  end

  test "should get edit" do
    get edit_arrendatario_url(@arrendatario)
    assert_response :success
  end

  test "should update arrendatario" do
    patch arrendatario_url(@arrendatario), params: { arrendatario: { mail: @arrendatario.mail, nombre: @arrendatario.nombre, password_digest: @arrendatario.password_digest, rut: @arrendatario.rut, telefono: @arrendatario.telefono } }
    assert_redirected_to arrendatario_url(@arrendatario)
  end

  test "should destroy arrendatario" do
    assert_difference('Arrendatario.count', -1) do
      delete arrendatario_url(@arrendatario)
    end

    assert_redirected_to arrendatarios_url
  end
end
