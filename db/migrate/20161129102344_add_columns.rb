class AddColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :massages, :description, :string
    add_column :massages, :tagline, :string
    add_column :massages, :price, :integer
    add_column :massages, :length, :integer
  end
end
