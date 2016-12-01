require 'test_helper'

class AddForeignKeyToFreelancerKnowledgesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_foreign_key_to_freelancer_knowledge = add_foreign_key_to_freelancer_knowledges(:one)
  end

  test "should get index" do
    get add_foreign_key_to_freelancer_knowledges_url
    assert_response :success
  end

  test "should get new" do
    get new_add_foreign_key_to_freelancer_knowledge_url
    assert_response :success
  end

  test "should create add_foreign_key_to_freelancer_knowledge" do
    assert_difference('AddForeignKeyToFreelancerKnowledge.count') do
      post add_foreign_key_to_freelancer_knowledges_url, params: { add_foreign_key_to_freelancer_knowledge: { freelancer_id: @add_foreign_key_to_freelancer_knowledge.freelancer_id, knowledge_id: @add_foreign_key_to_freelancer_knowledge.knowledge_id } }
    end

    assert_redirected_to add_foreign_key_to_freelancer_knowledge_url(AddForeignKeyToFreelancerKnowledge.last)
  end

  test "should show add_foreign_key_to_freelancer_knowledge" do
    get add_foreign_key_to_freelancer_knowledge_url(@add_foreign_key_to_freelancer_knowledge)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_foreign_key_to_freelancer_knowledge_url(@add_foreign_key_to_freelancer_knowledge)
    assert_response :success
  end

  test "should update add_foreign_key_to_freelancer_knowledge" do
    patch add_foreign_key_to_freelancer_knowledge_url(@add_foreign_key_to_freelancer_knowledge), params: { add_foreign_key_to_freelancer_knowledge: { freelancer_id: @add_foreign_key_to_freelancer_knowledge.freelancer_id, knowledge_id: @add_foreign_key_to_freelancer_knowledge.knowledge_id } }
    assert_redirected_to add_foreign_key_to_freelancer_knowledge_url(@add_foreign_key_to_freelancer_knowledge)
  end

  test "should destroy add_foreign_key_to_freelancer_knowledge" do
    assert_difference('AddForeignKeyToFreelancerKnowledge.count', -1) do
      delete add_foreign_key_to_freelancer_knowledge_url(@add_foreign_key_to_freelancer_knowledge)
    end

    assert_redirected_to add_foreign_key_to_freelancer_knowledges_url
  end
end
