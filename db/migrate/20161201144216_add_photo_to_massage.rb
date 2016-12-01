class AddPhotoToMassage < ActiveRecord::Migration[5.0]
  def change
    add_column :massages, :photo, :string
  end
end
