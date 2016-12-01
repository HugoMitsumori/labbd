require 'test_helper'

class RequiredKnowledgesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @required_knowledge = required_knowledges(:one)
  end

  test "should get index" do
    get required_knowledges_url
    assert_response :success
  end

  test "should get new" do
    get new_required_knowledge_url
    assert_response :success
  end

  test "should create required_knowledge" do
    assert_difference('RequiredKnowledge.count') do
      post required_knowledges_url, params: { required_knowledge: { knowledge_name: @required_knowledge.knowledge_name, service_code: @required_knowledge.service_code } }
    end

    assert_redirected_to required_knowledge_url(RequiredKnowledge.last)
  end

  test "should show required_knowledge" do
    get required_knowledge_url(@required_knowledge)
    assert_response :success
  end

  test "should get edit" do
    get edit_required_knowledge_url(@required_knowledge)
    assert_response :success
  end

  test "should update required_knowledge" do
    patch required_knowledge_url(@required_knowledge), params: { required_knowledge: { knowledge_name: @required_knowledge.knowledge_name, service_code: @required_knowledge.service_code } }
    assert_redirected_to required_knowledge_url(@required_knowledge)
  end

  test "should destroy required_knowledge" do
    assert_difference('RequiredKnowledge.count', -1) do
      delete required_knowledge_url(@required_knowledge)
    end

    assert_redirected_to required_knowledges_url
  end
end
