class CreateDolls < ActiveRecord::Migration
  def change
    create_table :dolls do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :tag

      t.timestamps
    end
  end
end
