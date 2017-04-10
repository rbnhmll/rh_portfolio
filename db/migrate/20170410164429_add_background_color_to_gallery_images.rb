class AddBackgroundColorToGalleryImages < ActiveRecord::Migration
  def change
    add_column :gallery_images, :background_color, :string, :default => "#FFF"
  end
end
