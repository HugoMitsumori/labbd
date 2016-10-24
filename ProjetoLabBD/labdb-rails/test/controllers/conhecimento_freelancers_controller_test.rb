require 'test_helper'

class ConhecimentoFreelancersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conhecimento_freelancer = conhecimento_freelancers(:one)
  end

  test "should get index" do
    get conhecimento_freelancers_url
    assert_response :success
  end

  test "should get new" do
    get new_conhecimento_freelancer_url
    assert_response :success
  end

  test "should create conhecimento_freelancer" do
    assert_difference('ConhecimentoFreelancer.count') do
      post conhecimento_freelancers_url, params: { conhecimento_freelancer: { certificados: @conhecimento_freelancer.certificados, login_freelancer: @conhecimento_freelancer.login_freelancer, nome_conhecimento: @conhecimento_freelancer.nome_conhecimento } }
    end

    assert_redirected_to conhecimento_freelancer_url(ConhecimentoFreelancer.last)
  end

  test "should show conhecimento_freelancer" do
    get conhecimento_freelancer_url(@conhecimento_freelancer)
    assert_response :success
  end

  test "should get edit" do
    get edit_conhecimento_freelancer_url(@conhecimento_freelancer)
    assert_response :success
  end

  test "should update conhecimento_freelancer" do
    patch conhecimento_freelancer_url(@conhecimento_freelancer), params: { conhecimento_freelancer: { certificados: @conhecimento_freelancer.certificados, login_freelancer: @conhecimento_freelancer.login_freelancer, nome_conhecimento: @conhecimento_freelancer.nome_conhecimento } }
    assert_redirected_to conhecimento_freelancer_url(@conhecimento_freelancer)
  end

  test "should destroy conhecimento_freelancer" do
    assert_difference('ConhecimentoFreelancer.count', -1) do
      delete conhecimento_freelancer_url(@conhecimento_freelancer)
    end

    assert_redirected_to conhecimento_freelancers_url
  end
end
