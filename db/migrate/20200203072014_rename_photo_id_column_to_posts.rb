class RenamePhotoIdColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :photo_id, :image_id
  end
end
