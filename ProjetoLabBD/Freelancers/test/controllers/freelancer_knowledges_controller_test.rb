require 'test_helper'

class FreelancerKnowledgesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @freelancer_knowledge = freelancer_knowledges(:one)
  end

  test "should get index" do
    get freelancer_knowledges_url
    assert_response :success
  end

  test "should get new" do
    get new_freelancer_knowledge_url
    assert_response :success
  end

  test "should create freelancer_knowledge" do
    assert_difference('FreelancerKnowledge.count') do
      post freelancer_knowledges_url, params: { freelancer_knowledge: { freelancer_login: @freelancer_knowledge.freelancer_login, knowledge_name: @freelancer_knowledge.knowledge_name } }
    end

    assert_redirected_to freelancer_knowledge_url(FreelancerKnowledge.last)
  end

  test "should show freelancer_knowledge" do
    get freelancer_knowledge_url(@freelancer_knowledge)
    assert_response :success
  end

  test "should get edit" do
    get edit_freelancer_knowledge_url(@freelancer_knowledge)
    assert_response :success
  end

  test "should update freelancer_knowledge" do
    patch freelancer_knowledge_url(@freelancer_knowledge), params: { freelancer_knowledge: { freelancer_login: @freelancer_knowledge.freelancer_login, knowledge_name: @freelancer_knowledge.knowledge_name } }
    assert_redirected_to freelancer_knowledge_url(@freelancer_knowledge)
  end

  test "should destroy freelancer_knowledge" do
    assert_difference('FreelancerKnowledge.count', -1) do
      delete freelancer_knowledge_url(@freelancer_knowledge)
    end

    assert_redirected_to freelancer_knowledges_url
  end
end
