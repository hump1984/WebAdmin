class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      
      t.string :name
      t.integer :number
      t.integer :active
      
      
      t.timestamps
    end
  end
end
