class Project < ActiveRecord::Base
	has_attached_file :screenshot, styles: { large: "900x600#", medium: "450x300#", thumb: "150x175#" }

	validates_attachment_content_type :screenshot, :content_type => /\Aimage\/.*\Z/

	has_many :tags, :dependent => :destroy
	has_many :gallery_images, :dependent => :destroy

	accepts_nested_attributes_for :tags, :allow_destroy => true

	accepts_nested_attributes_for :gallery_images, :allow_destroy => true
	#, :reject_if => lambda { |a| a[:tag_name].blank? }

end
