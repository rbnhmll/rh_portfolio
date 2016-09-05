class Project < ActiveRecord::Base
has_attached_file :screenshot
validates_attachment_content_type :screenshot, :content_type => /\Aimage\/.*\Z/

end
