class AddBannerImageToProjects < ActiveRecord::Migration
  def change
	  add_attachment :projects, :banner
	end
end