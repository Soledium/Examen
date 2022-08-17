class RemoveColumnStateIdFromCourse < ActiveRecord::Migration[7.0]
  def change
    remove_reference :courses, :state, null: false, foreign_key: true
  end
end
