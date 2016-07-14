class AddColumnsUsers < ActiveRecord::Migration
  def change
    add_column :users, :birth, :datetime
    add_column :users, :phone, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :employee_id, :integer
    add_column :users, :cost, :integer
    
  end
end
