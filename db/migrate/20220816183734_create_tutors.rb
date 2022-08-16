class CreateTutors < ActiveRecord::Migration[7.0]
  def change
    create_table :tutors do |t|
      t.string :rut
      t.string :name
      t.string :lastname1
      t.string :lastname2
      t.string :address
      t.string :position
      t.integer :salary_hour
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
