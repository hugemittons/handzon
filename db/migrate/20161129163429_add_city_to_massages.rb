class AddCityToMassages < ActiveRecord::Migration[5.0]
  def change
    add_column :massages, :city, :string
  end
end
