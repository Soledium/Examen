class AddColumnRegionIdToCourse < ActiveRecord::Migration[7.0]
  def change
    add_reference :courses, :region, foreign_key: true
  end
end
