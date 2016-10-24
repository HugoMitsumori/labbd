require 'test_helper'

class ConhecimentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conhecimento = conhecimentos(:one)
  end

  test "should get index" do
    get conhecimentos_url
    assert_response :success
  end

  test "should get new" do
    get new_conhecimento_url
    assert_response :success
  end

  test "should create conhecimento" do
    assert_difference('Conhecimento.count') do
      post conhecimentos_url, params: { conhecimento: { descricao: @conhecimento.descricao, nome: @conhecimento.nome } }
    end

    assert_redirected_to conhecimento_url(Conhecimento.last)
  end

  test "should show conhecimento" do
    get conhecimento_url(@conhecimento)
    assert_response :success
  end

  test "should get edit" do
    get edit_conhecimento_url(@conhecimento)
    assert_response :success
  end

  test "should update conhecimento" do
    patch conhecimento_url(@conhecimento), params: { conhecimento: { descricao: @conhecimento.descricao, nome: @conhecimento.nome } }
    assert_redirected_to conhecimento_url(@conhecimento)
  end

  test "should destroy conhecimento" do
    assert_difference('Conhecimento.count', -1) do
      delete conhecimento_url(@conhecimento)
    end

    assert_redirected_to conhecimentos_url
  end
end
