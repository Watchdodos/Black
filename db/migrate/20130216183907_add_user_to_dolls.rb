class AddUserToDolls < ActiveRecord::Migration
  def change
    add_column :dolls, :user_id, :integer
    add_index :dolls, :user_id
  end
end
