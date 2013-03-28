class AddColorToPins < ActiveRecord::Migration
  def change
  	add_column :pins, :color, :string
  end
end
