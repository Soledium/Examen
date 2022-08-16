require "test_helper"

class ModulePlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @module_plan = module_plans(:one)
  end

  test "should get index" do
    get module_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_module_plan_url
    assert_response :success
  end

  test "should create module_plan" do
    assert_difference("ModulePlan.count") do
      post module_plans_url, params: { module_plan: { moduule_id: @module_plan.moduule_id, training_plan_id: @module_plan.training_plan_id } }
    end

    assert_redirected_to module_plan_url(ModulePlan.last)
  end

  test "should show module_plan" do
    get module_plan_url(@module_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_module_plan_url(@module_plan)
    assert_response :success
  end

  test "should update module_plan" do
    patch module_plan_url(@module_plan), params: { module_plan: { moduule_id: @module_plan.moduule_id, training_plan_id: @module_plan.training_plan_id } }
    assert_redirected_to module_plan_url(@module_plan)
  end

  test "should destroy module_plan" do
    assert_difference("ModulePlan.count", -1) do
      delete module_plan_url(@module_plan)
    end

    assert_redirected_to module_plans_url
  end
end
