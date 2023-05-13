class LogentriesController < ApplicationController
  def create
    @role = Role.find(params[:role_id])
    @logentry = @role.logentries.create(logentry_params)
    redirect_to role_path(@role)
  end

  private
    def logentry_params
      params.require(:logentry).permit(:entry_type, :body)
    end
end
