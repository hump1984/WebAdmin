class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      
      t.datetime :added
      t.datetime :start_datetime
      t.datetime :stop_datetime
      t.integer :amount
      t.text :comment
      t.references :projects, foreign_key: true
      
      t.timestamps
      
    end
  end
end
