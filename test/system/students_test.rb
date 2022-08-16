require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "should create student" do
    visit students_url
    click_on "New student"

    fill_in "Address", with: @student.address
    fill_in "Course", with: @student.course_id
    fill_in "Last name1", with: @student.last_name1
    fill_in "Last name2", with: @student.last_name2
    fill_in "Name", with: @student.name
    fill_in "Rut", with: @student.rut
    fill_in "State", with: @student.state_id
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "should update Student" do
    visit student_url(@student)
    click_on "Edit this student", match: :first

    fill_in "Address", with: @student.address
    fill_in "Course", with: @student.course_id
    fill_in "Last name1", with: @student.last_name1
    fill_in "Last name2", with: @student.last_name2
    fill_in "Name", with: @student.name
    fill_in "Rut", with: @student.rut
    fill_in "State", with: @student.state_id
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "should destroy Student" do
    visit student_url(@student)
    click_on "Destroy this student", match: :first

    assert_text "Student was successfully destroyed"
  end
end
