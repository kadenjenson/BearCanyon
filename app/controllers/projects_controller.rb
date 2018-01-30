class ProjectsController < ApplicationController
  before_action :set_project_item, only: [:edit, :show, :update, :destroy]
  layout "project"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

  def index
    @projects = Project.by_position.page(params[:page]).per(9)
    @page_title = "BC | Projects"
  end

  def sort
    params[:order].each do |key, value|
      Project.find(value[:id]).update(position: value[:position])
    end

    head :ok
  end

  def new
    @project = Project.new
    @page_title = "BC | New Project"
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
    @page_title = @project.title
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
    @page_title = @project.title
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
                                    :thumb_image,
                                    :image_1,
                                    :image_2,
                                    :image_3,
                                    :image_4,
                                    :image_5,
                                    :position,
                                    technologies_attributes: [:id, :_destroy]
                                    )
  end

  def set_project_item
    @project = Project.find(params[:id])
  end

end












