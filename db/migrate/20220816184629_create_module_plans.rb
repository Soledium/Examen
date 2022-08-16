class CreateModulePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :module_plans do |t|
      t.references :moduule, null: false, foreign_key: true
      t.references :training_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
