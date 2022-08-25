class AddImageColumnToGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :image_url, :string
  end
end
