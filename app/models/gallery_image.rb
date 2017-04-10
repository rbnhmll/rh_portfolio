class GalleryImage < ActiveRecord::Base

	has_attached_file :image, styles: { large: "950x600#", medium: "450x300#"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :project

end
