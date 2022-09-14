class AddCoordinatesToGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :latitude, :float
    add_column :groups, :longitude, :float
  end
end
