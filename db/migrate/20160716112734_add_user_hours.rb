class AddUserHours < ActiveRecord::Migration
  def change
    add_column :hours, :users, :references, foreign_key: true 
  end
end
