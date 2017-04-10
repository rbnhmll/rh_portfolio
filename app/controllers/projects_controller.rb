class ProjectsController < ApplicationController
before_action :set_project, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, only: [:edit, :update, :destroy, :new]

	def index
		@projects = Project.all.order(created_at: :desc)
	end

	def show
		@gallery_images = @project.gallery_images.all
	end

	def new
		@project = Project.new
		4.times do 
			@project.tags.build
		end

		4.times do 
			@project.gallery_images.build
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
		if @project.gallery_images.count < 1
			4.times do 
				@project.gallery_images.build
			end
		end
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
    params.require(:project).permit(:title, :description, :long_description, :screenshot, :url, :active, :tag_name, tags_attributes: [ :id, :tag_name, :project_id ], gallery_images_attributes: [ :id, :gallery_order, :project_id, :image])
  end

end
