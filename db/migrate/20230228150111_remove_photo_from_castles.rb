class RemovePhotoFromCastles < ActiveRecord::Migration[7.0]
  def change
    remove_column :castles, :photo, :string
  end
end
