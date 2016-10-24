require 'test_helper'

class ContratantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contratante = contratantes(:one)
  end

  test "should get index" do
    get contratantes_url
    assert_response :success
  end

  test "should get new" do
    get new_contratante_url
    assert_response :success
  end

  test "should create contratante" do
    assert_difference('Contratante.count') do
      post contratantes_url, params: { contratante: { cargo: @contratante.cargo, cnnpj_empresa: @contratante.cnnpj_empresa, login: @contratante.login } }
    end

    assert_redirected_to contratante_url(Contratante.last)
  end

  test "should show contratante" do
    get contratante_url(@contratante)
    assert_response :success
  end

  test "should get edit" do
    get edit_contratante_url(@contratante)
    assert_response :success
  end

  test "should update contratante" do
    patch contratante_url(@contratante), params: { contratante: { cargo: @contratante.cargo, cnnpj_empresa: @contratante.cnnpj_empresa, login: @contratante.login } }
    assert_redirected_to contratante_url(@contratante)
  end

  test "should destroy contratante" do
    assert_difference('Contratante.count', -1) do
      delete contratante_url(@contratante)
    end

    assert_redirected_to contratantes_url
  end
end
