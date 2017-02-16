class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      flash[:success] = 'New Appointment Added'
      redirect_to :back
    else
      render :new
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    flash[:success] = 'Appointment Terminated'
    redirect_to patients_path
  end


private
  def appointment_params
    params.require(:appointment).permit(:patient_id, :doctor_id, :appointment_date)
  end


end
