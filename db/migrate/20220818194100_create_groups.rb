class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :about
      t.string :category
      t.string :location

      t.timestamps
    end
  end
end
