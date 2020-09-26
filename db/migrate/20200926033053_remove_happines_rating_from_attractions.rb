class RemoveHappinesRatingFromAttractions < ActiveRecord::Migration[5.2]
  def change
    remove_column :attractions, :happines_rating, :integer
  end
end
