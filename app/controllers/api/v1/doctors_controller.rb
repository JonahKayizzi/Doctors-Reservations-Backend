class Api::V1::DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
    render json: @doctors
  end

  def show
    @doctor = Doctor.find(params[:id])
    render json: @doctor
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      render json: 'Doctor created successfully'
    else
      render json: 'Doctor creation failed'
    end
  end

  def doctor_params
    params.require(:doctor).permit(:name, :speciality, :description, :graduation, :image)
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    if @doctor.destroy
      render json: 'Doctor deleted successfully'
    else
      render json: 'Doctor deletion failed'
    end
  end
end
