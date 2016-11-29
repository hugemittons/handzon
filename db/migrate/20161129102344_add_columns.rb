class AddColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :description, :string
    add_column :tagline, :string
    add_column :price, :integer
    add_column :length, :integer
  end
end
