class WorkspacesController < ApplicationController
  def index
    @workspaces = Workspace.all
  end

  def show
    @workspace = Workspace.find(params[:id])
  end

  def new
    @workspace = Workspace.new
  end
  
  def create
    @workspace = Workspace.new
    @workspace.title = params[:workspace][:title]
    @workspace.description = params[:workspace][:description]
    
    if @workspace.save
      flash[:notice] = "Workspace was saved."
      redirect_to @workspace
    else
      flash.now[:alert] = "There was an error saving the workspace. Please try again."
      render :new
    end
  end

  def edit
    @workspace = Workspace.find(params[:id])
  end
  
  def update
    @workspace = Workspace.find(params[:id])
    @workspace.title = params[:workspace][:title]
    @workspace.description = params[:workspace][:description]
    
    if @workspace.save
      flash[:notice] = "Workspace was updated."
      redirect_to @workspace
    else
      flash.now[:alert] = "There was an error saving the workspace. Please try again."
      render :edit
    end
  end
  
  def destroy
    @workspace = Workspace.find(params[:id])
    if @workspace.destroy
      flash[:notice] = "\"#{@workspace.title}\" was deleted successfully."
      redirect_to workspaces_path
    else
      flash.now[:alert] = "There was an error deleting the workspace."
      render :show
    end
  end
  
end
