class Project < ActiveRecord::Base
	has_attached_file :screenshot, styles: { medium: "175x200#", thumb: "150x175#" }

	validates_attachment_content_type :screenshot, :content_type => /\Aimage\/.*\Z/

	has_many :languages, :dependent => :destroy

end
