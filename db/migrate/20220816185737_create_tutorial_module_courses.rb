class CreateTutorialModuleCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :tutorial_module_courses do |t|
      t.references :moduule, null: false, foreign_key: true
      t.references :tutor, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
