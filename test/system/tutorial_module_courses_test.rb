require "application_system_test_case"

class TutorialModuleCoursesTest < ApplicationSystemTestCase
  setup do
    @tutorial_module_course = tutorial_module_courses(:one)
  end

  test "visiting the index" do
    visit tutorial_module_courses_url
    assert_selector "h1", text: "Tutorial module courses"
  end

  test "should create tutorial module course" do
    visit tutorial_module_courses_url
    click_on "New tutorial module course"

    fill_in "Course", with: @tutorial_module_course.course_id
    fill_in "Moduule", with: @tutorial_module_course.moduule_id
    fill_in "Tutor", with: @tutorial_module_course.tutor_id
    click_on "Create Tutorial module course"

    assert_text "Tutorial module course was successfully created"
    click_on "Back"
  end

  test "should update Tutorial module course" do
    visit tutorial_module_course_url(@tutorial_module_course)
    click_on "Edit this tutorial module course", match: :first

    fill_in "Course", with: @tutorial_module_course.course_id
    fill_in "Moduule", with: @tutorial_module_course.moduule_id
    fill_in "Tutor", with: @tutorial_module_course.tutor_id
    click_on "Update Tutorial module course"

    assert_text "Tutorial module course was successfully updated"
    click_on "Back"
  end

  test "should destroy Tutorial module course" do
    visit tutorial_module_course_url(@tutorial_module_course)
    click_on "Destroy this tutorial module course", match: :first

    assert_text "Tutorial module course was successfully destroyed"
  end
end
