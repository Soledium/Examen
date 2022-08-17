class DropInstalls < ActiveRecord::Migration[7.0]
  def change
    drop_table :module_plans
    drop_table :tutorial_module_courses
    drop_table :moduules
    drop_table :tutors
  end
end
