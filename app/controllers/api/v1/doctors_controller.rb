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
      render json: { status: :created, message: 'Doctor created successfully' }
    else
      render json: @doctor.errors
    end
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    if @doctor.destroy
      render json: { message: 'Doctor deleted successfully', id: @doctor.id }
    else
      render json: @doctor.errors
    end
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :speciality, :description, :graduation, :image)
  end
end
