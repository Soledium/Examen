class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :rut
      t.string :name
      t.string :last_name1
      t.string :last_name2
      t.string :address
      t.references :state, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
