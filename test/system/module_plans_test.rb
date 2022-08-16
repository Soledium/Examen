require "application_system_test_case"

class ModulePlansTest < ApplicationSystemTestCase
  setup do
    @module_plan = module_plans(:one)
  end

  test "visiting the index" do
    visit module_plans_url
    assert_selector "h1", text: "Module plans"
  end

  test "should create module plan" do
    visit module_plans_url
    click_on "New module plan"

    fill_in "Moduule", with: @module_plan.moduule_id
    fill_in "Training plan", with: @module_plan.training_plan_id
    click_on "Create Module plan"

    assert_text "Module plan was successfully created"
    click_on "Back"
  end

  test "should update Module plan" do
    visit module_plan_url(@module_plan)
    click_on "Edit this module plan", match: :first

    fill_in "Moduule", with: @module_plan.moduule_id
    fill_in "Training plan", with: @module_plan.training_plan_id
    click_on "Update Module plan"

    assert_text "Module plan was successfully updated"
    click_on "Back"
  end

  test "should destroy Module plan" do
    visit module_plan_url(@module_plan)
    click_on "Destroy this module plan", match: :first

    assert_text "Module plan was successfully destroyed"
  end
end
