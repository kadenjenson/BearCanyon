class ProjectsController < ApplicationController
  before_action :set_project_item, only: [:edit, :show, :update, :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    respond_to do |format|
      if @project.save
        format.html {redirect_to projects_path, notice: 'Your post is now live.'}
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html {redirect_to projects_path, notice: 'Your post was successfully updated.'}
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_path, notice: 'Project has been purged'}
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, 
                                    :body, 
                                    technologies_attributes: [:id, :_destroy]
                                    )
  end

  def set_project_item
    @project = Project.find(params[:id])
  end

end












