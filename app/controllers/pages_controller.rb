class PagesController < ApplicationController

	def home
		proj = Project.all.order(created_at: :desc)
		@projects = proj.where(active: true)
	end

end
