class CreateTrainingPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :training_plans do |t|
      t.string :training_plan_code
      t.text :description
      t.integer :hours

      t.timestamps
    end
  end
end
