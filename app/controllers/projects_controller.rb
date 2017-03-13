class ProjectsController < ApplicationController
before_action :set_project, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, only: [:edit, :update, :destroy, :new]

	def index
		@projects = Project.all.order(created_at: :desc)
	end

	def show
		
	end

	def new
		@project = Project.new
		5.times do 
			@project.languages.build
		end
	end

	def create
		@project = Project.create(project_params)
		if @project.save
			redirect_to projects_path
		else
			render :new
		end
	end

	def edit
		
	end

	def update
		respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to projects_path, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
	end

	def destroy
		@project.destroy
		respond_to do |format|
	    format.html { redirect_to projects_path, notice: 'Project was successfully destroyed.' }
	    format.json { head :no_content }
	  end
	end

private

  def set_project
    @project = Project.find(params[:id])
  end
  
  def project_params
    params.require(:project).permit(:title, :description, :long_description, :screenshot, :url, :active, :lang_name, languages_attributes: [ :id, :lang_name, :project_id ])
  end

end
