class ChangeDataTypeForAge < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :age
    add_column :users, :age, :integer
  end
end
