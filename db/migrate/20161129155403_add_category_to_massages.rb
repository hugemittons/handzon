class AddCategoryToMassages < ActiveRecord::Migration[5.0]
  def change
    add_column :massages, :category, :string
  end
end
