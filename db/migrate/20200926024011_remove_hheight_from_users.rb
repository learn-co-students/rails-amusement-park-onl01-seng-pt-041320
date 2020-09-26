class RemoveHheightFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :hheight, :integer
  end
end
