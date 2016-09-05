class ProjectsController < ApplicationController
before_action :set_project, only: [:edit, :update, :destroy]
before_action :authenticate_user!

	def index
		@projects = Project.all
	end

	def show
		
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.create(project_params)
		if @project.save
			redirect_to root_path
		else
			render :new
		end
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

private

  def set_project
    @project = Project.find(params[:id])
  end
  
  def project_params
    params.require(:project).permit(:title, :description, :screenshot, :url)
  end

end
