class AddUserHours < ActiveRecord::Migration
  def change
    add_reference :hours, :user, foreign_key: true
  end
end
