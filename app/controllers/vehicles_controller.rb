class VehiclesController < ApplicationController
  
  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user_id = current_user.id
    if @vehicle.save
      redirect_to perfil_path
    else
      redirect_to perfil_path
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    if @vehicle.destroy
      redirect_to perfil_path
    else
      redirect_to perfil_path
    end
  end

  private

    def vehicle_params
      params.require(:vehicle).permit(:model, :color, :foto)
    end
end