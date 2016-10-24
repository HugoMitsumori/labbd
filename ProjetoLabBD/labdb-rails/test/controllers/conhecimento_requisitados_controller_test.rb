require 'test_helper'

class ConhecimentoRequisitadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conhecimento_requisitado = conhecimento_requisitados(:one)
  end

  test "should get index" do
    get conhecimento_requisitados_url
    assert_response :success
  end

  test "should get new" do
    get new_conhecimento_requisitado_url
    assert_response :success
  end

  test "should create conhecimento_requisitado" do
    assert_difference('ConhecimentoRequisitado.count') do
      post conhecimento_requisitados_url, params: { conhecimento_requisitado: { codigo_servico: @conhecimento_requisitado.codigo_servico, nome_conhecimento: @conhecimento_requisitado.nome_conhecimento } }
    end

    assert_redirected_to conhecimento_requisitado_url(ConhecimentoRequisitado.last)
  end

  test "should show conhecimento_requisitado" do
    get conhecimento_requisitado_url(@conhecimento_requisitado)
    assert_response :success
  end

  test "should get edit" do
    get edit_conhecimento_requisitado_url(@conhecimento_requisitado)
    assert_response :success
  end

  test "should update conhecimento_requisitado" do
    patch conhecimento_requisitado_url(@conhecimento_requisitado), params: { conhecimento_requisitado: { codigo_servico: @conhecimento_requisitado.codigo_servico, nome_conhecimento: @conhecimento_requisitado.nome_conhecimento } }
    assert_redirected_to conhecimento_requisitado_url(@conhecimento_requisitado)
  end

  test "should destroy conhecimento_requisitado" do
    assert_difference('ConhecimentoRequisitado.count', -1) do
      delete conhecimento_requisitado_url(@conhecimento_requisitado)
    end

    assert_redirected_to conhecimento_requisitados_url
  end
end
