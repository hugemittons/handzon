class AddReference < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :massage, :index: true
  end
end
