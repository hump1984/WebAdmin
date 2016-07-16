class ProjectsController < ApplicationController


    def index
        @project = Project.all
    end
    
    def new
    end
    
    def show
        @project = Project.find(params[:id])
    end
  
    def create
        #render plain: params[:project].inspect
            @project = Project.new(project_params)
            
            @project.save
            redirect_to @project
    end
    


    
    private
      def project_params
        params.require(:project).permit(:name, :number, :active)
      end


end
