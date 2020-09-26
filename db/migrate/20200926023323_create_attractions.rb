class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :name
      t.integer :nausea_rating
      t.integer :happines_rating
      t.integer :min_height
      t.integer :ttickets
    end
  end
end
