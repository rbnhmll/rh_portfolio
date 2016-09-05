class AddAttachmentToProjects < ActiveRecord::Migration
  def change
	  add_attachment :projects, :screenshot
	end
end
