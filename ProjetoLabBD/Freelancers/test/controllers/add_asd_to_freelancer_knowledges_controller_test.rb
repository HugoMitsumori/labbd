require 'test_helper'

class AddAsdToFreelancerKnowledgesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_asd_to_freelancer_knowledge = add_asd_to_freelancer_knowledges(:one)
  end

  test "should get index" do
    get add_asd_to_freelancer_knowledges_url
    assert_response :success
  end

  test "should get new" do
    get new_add_asd_to_freelancer_knowledge_url
    assert_response :success
  end

  test "should create add_asd_to_freelancer_knowledge" do
    assert_difference('AddAsdToFreelancerKnowledge.count') do
      post add_asd_to_freelancer_knowledges_url, params: { add_asd_to_freelancer_knowledge: { freelancer_id: @add_asd_to_freelancer_knowledge.freelancer_id, knowledge_id: @add_asd_to_freelancer_knowledge.knowledge_id } }
    end

    assert_redirected_to add_asd_to_freelancer_knowledge_url(AddAsdToFreelancerKnowledge.last)
  end

  test "should show add_asd_to_freelancer_knowledge" do
    get add_asd_to_freelancer_knowledge_url(@add_asd_to_freelancer_knowledge)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_asd_to_freelancer_knowledge_url(@add_asd_to_freelancer_knowledge)
    assert_response :success
  end

  test "should update add_asd_to_freelancer_knowledge" do
    patch add_asd_to_freelancer_knowledge_url(@add_asd_to_freelancer_knowledge), params: { add_asd_to_freelancer_knowledge: { freelancer_id: @add_asd_to_freelancer_knowledge.freelancer_id, knowledge_id: @add_asd_to_freelancer_knowledge.knowledge_id } }
    assert_redirected_to add_asd_to_freelancer_knowledge_url(@add_asd_to_freelancer_knowledge)
  end

  test "should destroy add_asd_to_freelancer_knowledge" do
    assert_difference('AddAsdToFreelancerKnowledge.count', -1) do
      delete add_asd_to_freelancer_knowledge_url(@add_asd_to_freelancer_knowledge)
    end

    assert_redirected_to add_asd_to_freelancer_knowledges_url
  end
end
