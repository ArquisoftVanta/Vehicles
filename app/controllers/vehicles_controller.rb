class VehiclesController < ApplicationController
    def index
      vehicles = Vehicle.order('id')
      render json: {status: 'SUCCES', message:'Loaded vehicles', data:vehicles},status: :ok
    end
  
    def create
      vehicle = Vehicle.new(vehicle_params)
  
      if vehicle.save
        render json: {status: 'SUCCES', message:'Saved vehicle', data:vehicle},status: :ok
      else
        render json: {status: 'ERROR', message:'Vehicle not saved', data:vehicle.errors},status: :unprocessable_entity
      end
    end
  
    def show
      vehicle = Vehicle.where(params[:owner])
      render json: {status: 'SUCCES', message:'Loaded vehicle', data:vehicle},status: :ok
    end
  
    def update
      vehicle = Vehicle.find(params[:id])
      if vehicle.updated_attributes(upd_params)
        render json: {status: 'SUCCES', message:'Updated vehicle', data:vehicle},status: :ok
      else
        render json: {status: 'ERROR', message:'Vehicle not updated', data:vehicle.errors},status: :unprocessable_entity
      end
    end
  
    def destroy
      vehicle = Vehicle.find(params[:id])
      vehicle.destroy
      render json: {status: 'SUCCES', message:'Deleted vehicle', data:vehicle},status: :ok
    end
  
    private
    def vehicle_params
      params.permit(:owner, :license_plate, :vehicle_type, :model, :year, :color, :registry, :picture, :capacity, :brand, :service_type, :body, :soat_exp, :engine, :gas_type)
    end

    def upd_params
      params.permit(:id, :owner, :license_plate, :vehicle_type, :model, :year, :color, :registry, :picture, :capacity, :brand, :service_type, :body, :soat_exp, :engine, :gas_type)
  end  