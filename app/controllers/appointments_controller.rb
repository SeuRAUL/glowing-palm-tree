class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @appointments = current_user.appointments
  end

  def show
  end

  def new
    @appointment = current_user.appointments.build
  end

  def edit
  end

  def create
    @appointment = current_user.appointments.build(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointment_url }
      format.json { head :no_content }
    end
  end


  private
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:date, :in, :out, :lunch_start, :lunch_end)
    end
end
