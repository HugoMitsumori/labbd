require 'test_helper'

class AddCompanToContractorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_compan_to_contractor = add_compan_to_contractors(:one)
  end

  test "should get index" do
    get add_compan_to_contractors_url
    assert_response :success
  end

  test "should get new" do
    get new_add_compan_to_contractor_url
    assert_response :success
  end

  test "should create add_compan_to_contractor" do
    assert_difference('AddCompanToContractor.count') do
      post add_compan_to_contractors_url, params: { add_compan_to_contractor: { company_id: @add_compan_to_contractor.company_id } }
    end

    assert_redirected_to add_compan_to_contractor_url(AddCompanToContractor.last)
  end

  test "should show add_compan_to_contractor" do
    get add_compan_to_contractor_url(@add_compan_to_contractor)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_compan_to_contractor_url(@add_compan_to_contractor)
    assert_response :success
  end

  test "should update add_compan_to_contractor" do
    patch add_compan_to_contractor_url(@add_compan_to_contractor), params: { add_compan_to_contractor: { company_id: @add_compan_to_contractor.company_id } }
    assert_redirected_to add_compan_to_contractor_url(@add_compan_to_contractor)
  end

  test "should destroy add_compan_to_contractor" do
    assert_difference('AddCompanToContractor.count', -1) do
      delete add_compan_to_contractor_url(@add_compan_to_contractor)
    end

    assert_redirected_to add_compan_to_contractors_url
  end
end
