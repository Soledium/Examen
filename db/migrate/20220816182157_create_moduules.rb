class CreateModuules < ActiveRecord::Migration[7.0]
  def change
    create_table :moduules do |t|
      t.text :description
      t.integer :hours

      t.timestamps
    end
  end
end
