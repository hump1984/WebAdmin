class ProjectsController < ApplicationController

    def list_projects
        
    end

    def index
        @project = Project.all
    end
    
    def new
        @project = Project.new

    end
    
    def show
        @project = Project.find(params[:id])
    end
  
    def create
        @project = Project.new(project_params)
        @project.save
        redirect_to @project
      if @project.save
        redirect_to @project
      else
        render 'new'
      end
    end
    
    def update
      @project = Project.find(params[:id])
     
      if @project.update(project_params)
        redirect_to @project
      else
        render 'edit'
      end
    end
    
    def edit
        @project = Project.find(params[:id])
    end

    def destroy
      @project = Project.find(params[:id])
      @project.destroy
     
      redirect_to projects_path
    end


    private
      def project_params
        params.require(:project).permit(:name, :number, :active)
      end

end
