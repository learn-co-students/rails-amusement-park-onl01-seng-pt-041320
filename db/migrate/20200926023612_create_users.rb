class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.integer :nausea
      t.integer :happines
      t.integer :tickets
      t.integer :hheight
      t.boolean :admin
    end
  end
end
