require "application_system_test_case"

class TutorsTest < ApplicationSystemTestCase
  setup do
    @tutor = tutors(:one)
  end

  test "visiting the index" do
    visit tutors_url
    assert_selector "h1", text: "Tutors"
  end

  test "should create tutor" do
    visit tutors_url
    click_on "New tutor"

    fill_in "Address", with: @tutor.address
    fill_in "Lastname1", with: @tutor.lastname1
    fill_in "Lastname2", with: @tutor.lastname2
    fill_in "Name", with: @tutor.name
    fill_in "Position", with: @tutor.position
    fill_in "Rut", with: @tutor.rut
    fill_in "Salary hour", with: @tutor.salary_hour
    fill_in "State", with: @tutor.state_id
    click_on "Create Tutor"

    assert_text "Tutor was successfully created"
    click_on "Back"
  end

  test "should update Tutor" do
    visit tutor_url(@tutor)
    click_on "Edit this tutor", match: :first

    fill_in "Address", with: @tutor.address
    fill_in "Lastname1", with: @tutor.lastname1
    fill_in "Lastname2", with: @tutor.lastname2
    fill_in "Name", with: @tutor.name
    fill_in "Position", with: @tutor.position
    fill_in "Rut", with: @tutor.rut
    fill_in "Salary hour", with: @tutor.salary_hour
    fill_in "State", with: @tutor.state_id
    click_on "Update Tutor"

    assert_text "Tutor was successfully updated"
    click_on "Back"
  end

  test "should destroy Tutor" do
    visit tutor_url(@tutor)
    click_on "Destroy this tutor", match: :first

    assert_text "Tutor was successfully destroyed"
  end
end
