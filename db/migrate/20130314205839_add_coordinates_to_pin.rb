class AddCoordinatesToPin < ActiveRecord::Migration
  def change
    add_column :pins, :coordinate_x, :float
    add_column :pins, :coordinate_y, :float
  end
end
