class RemoveHappinesFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :happines, :integer
  end
end
