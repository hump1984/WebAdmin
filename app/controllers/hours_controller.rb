class HoursController < ApplicationController
    
    def create
        @project = Project.find(params[:project_id])
        @hours = @project.hours.create(hours_params)
        redirect_to project_path(@project)
    end
 
    private
    
    def hours_params
      params.require(:hours).permit(:start_datetime, :stop_datetime, :amount, :comment)
    end
    

end