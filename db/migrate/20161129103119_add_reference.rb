class AddReference < ActiveRecord::Migration[5.0]
  def change
    add_reference :massages, :user, index: true
  end
end
