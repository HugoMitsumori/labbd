require 'test_helper'

class ServicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servico = servicos(:one)
  end

  test "should get index" do
    get servicos_url
    assert_response :success
  end

  test "should get new" do
    get new_servico_url
    assert_response :success
  end

  test "should create servico" do
    assert_difference('Servico.count') do
      post servicos_url, params: { servico: { avaliacao_final: @servico.avaliacao_final, codigo_servico: @servico.codigo_servico, data_inicio: @servico.data_inicio, data_termino: @servico.data_termino, id_solucao_geradora: @servico.id_solucao_geradora, login_contratante: @servico.login_contratante, nome_servico: @servico.nome_servico, preco: @servico.preco, status: @servico.status } }
    end

    assert_redirected_to servico_url(Servico.last)
  end

  test "should show servico" do
    get servico_url(@servico)
    assert_response :success
  end

  test "should get edit" do
    get edit_servico_url(@servico)
    assert_response :success
  end

  test "should update servico" do
    patch servico_url(@servico), params: { servico: { avaliacao_final: @servico.avaliacao_final, codigo_servico: @servico.codigo_servico, data_inicio: @servico.data_inicio, data_termino: @servico.data_termino, id_solucao_geradora: @servico.id_solucao_geradora, login_contratante: @servico.login_contratante, nome_servico: @servico.nome_servico, preco: @servico.preco, status: @servico.status } }
    assert_redirected_to servico_url(@servico)
  end

  test "should destroy servico" do
    assert_difference('Servico.count', -1) do
      delete servico_url(@servico)
    end

    assert_redirected_to servicos_url
  end
end
