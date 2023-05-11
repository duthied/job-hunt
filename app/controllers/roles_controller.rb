class RolesController < ApplicationController
  def index
    @roles = Role.all
  end

  def show
    @role = Role.find(params[:id])
  end

  def new
      @role = Role.new
  end

  def create
    @role = Role.new(role_params)

    if @role.save
      redirect_to @role
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])

    if @role.update(role_params)
      redirect_to @role
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def role_params
      params.require(:role).permit(:title, :notes, :status, :url)
    end
end
