class AddDollIdToPins < ActiveRecord::Migration
  def change
    add_column :pins, :doll_id, :integer
  end
end
