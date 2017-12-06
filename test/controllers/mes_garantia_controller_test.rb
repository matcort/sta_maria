require 'test_helper'

class MesGarantiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mes_garantium = mes_garantia(:one)
  end

  test "should get index" do
    get mes_garantia_url
    assert_response :success
  end

  test "should get new" do
    get new_mes_garantium_url
    assert_response :success
  end

  test "should create mes_garantium" do
    assert_difference('MesGarantium.count') do
      post mes_garantia_url, params: { mes_garantium: { fecha: @mes_garantium.fecha, local_id: @mes_garantium.local_id, monto: @mes_garantium.monto } }
    end

    assert_redirected_to mes_garantium_url(MesGarantium.last)
  end

  test "should show mes_garantium" do
    get mes_garantium_url(@mes_garantium)
    assert_response :success
  end

  test "should get edit" do
    get edit_mes_garantium_url(@mes_garantium)
    assert_response :success
  end

  test "should update mes_garantium" do
    patch mes_garantium_url(@mes_garantium), params: { mes_garantium: { fecha: @mes_garantium.fecha, local_id: @mes_garantium.local_id, monto: @mes_garantium.monto } }
    assert_redirected_to mes_garantium_url(@mes_garantium)
  end

  test "should destroy mes_garantium" do
    assert_difference('MesGarantium.count', -1) do
      delete mes_garantium_url(@mes_garantium)
    end

    assert_redirected_to mes_garantia_url
  end
end
