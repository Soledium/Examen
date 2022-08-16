require "test_helper"

class TutorialModuleCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutorial_module_course = tutorial_module_courses(:one)
  end

  test "should get index" do
    get tutorial_module_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_tutorial_module_course_url
    assert_response :success
  end

  test "should create tutorial_module_course" do
    assert_difference("TutorialModuleCourse.count") do
      post tutorial_module_courses_url, params: { tutorial_module_course: { course_id: @tutorial_module_course.course_id, moduule_id: @tutorial_module_course.moduule_id, tutor_id: @tutorial_module_course.tutor_id } }
    end

    assert_redirected_to tutorial_module_course_url(TutorialModuleCourse.last)
  end

  test "should show tutorial_module_course" do
    get tutorial_module_course_url(@tutorial_module_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutorial_module_course_url(@tutorial_module_course)
    assert_response :success
  end

  test "should update tutorial_module_course" do
    patch tutorial_module_course_url(@tutorial_module_course), params: { tutorial_module_course: { course_id: @tutorial_module_course.course_id, moduule_id: @tutorial_module_course.moduule_id, tutor_id: @tutorial_module_course.tutor_id } }
    assert_redirected_to tutorial_module_course_url(@tutorial_module_course)
  end

  test "should destroy tutorial_module_course" do
    assert_difference("TutorialModuleCourse.count", -1) do
      delete tutorial_module_course_url(@tutorial_module_course)
    end

    assert_redirected_to tutorial_module_courses_url
  end
end
