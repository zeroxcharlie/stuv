class ViajesController < ApplicationController
  
  def index
    if params[:p]
      @viajes = Viaje.where(place_id: params[:p])
    end
  end

  def show
    @viaje = Viaje.find(params[:id])
  end

  def new
  end

  def create
    @viaje = Viaje.new(viaje_params)
    @viaje.user_id = current_user.id

    if @viaje.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    @viaje = Viaje.find(params[:id])
    if @viaje.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def viaje_params
    params.require(:viaje).permit(:place_id, :time_limit, :description)
  end
end
