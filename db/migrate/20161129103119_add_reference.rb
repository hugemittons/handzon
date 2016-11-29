class AddReference < ActiveRecord::Migration[5.0]
  def change
    add_reference :massages, :users, :index: true
  end
end
