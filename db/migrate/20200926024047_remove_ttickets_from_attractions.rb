class RemoveTticketsFromAttractions < ActiveRecord::Migration[5.2]
  def change
    remove_column :attractions, :ttickets, :integer
  end
end
