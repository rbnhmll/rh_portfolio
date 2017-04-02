class AddImageColumnsToGalleryImages < ActiveRecord::Migration
  def up
    add_attachment :gallery_images, :image
  end

  def down
    remove_attachment :gallery_images, :image
  end
end