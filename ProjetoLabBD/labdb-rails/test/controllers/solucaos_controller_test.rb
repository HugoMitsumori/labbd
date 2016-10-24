require 'test_helper'

class SolucaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solucao = solucaos(:one)
  end

  test "should get index" do
    get solucaos_url
    assert_response :success
  end

  test "should get new" do
    get new_solucao_url
    assert_response :success
  end

  test "should create solucao" do
    assert_difference('Solucao.count') do
      post solucaos_url, params: { solucao: { criador: @solucao.criador, descricao: @solucao.descricao, id_problema: @solucao.id_problema, id_solucao: @solucao.id_solucao } }
    end

    assert_redirected_to solucao_url(Solucao.last)
  end

  test "should show solucao" do
    get solucao_url(@solucao)
    assert_response :success
  end

  test "should get edit" do
    get edit_solucao_url(@solucao)
    assert_response :success
  end

  test "should update solucao" do
    patch solucao_url(@solucao), params: { solucao: { criador: @solucao.criador, descricao: @solucao.descricao, id_problema: @solucao.id_problema, id_solucao: @solucao.id_solucao } }
    assert_redirected_to solucao_url(@solucao)
  end

  test "should destroy solucao" do
    assert_difference('Solucao.count', -1) do
      delete solucao_url(@solucao)
    end

    assert_redirected_to solucaos_url
  end
end
