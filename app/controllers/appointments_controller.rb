class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = current_user.appointments.order(date: :desc)
  end

  def show
  end

  def new
    @appointment = current_user.appointments.build(date: Time.zone.now, in: Time.zone.now)
  end

  def check_in
    if current_user.appointments.find_by(date: Time.zone.now).nil?
      @appointment = current_user.appointments.build(date: Time.zone.now, in: Time.zone.now)
      @appointment.save
      redirect_to appointments_path
    end
  end

  def lunch_start
    @appointment = current_user.appointments.find_by(date: Time.zone.now)
    if !@appointment.nil? and @appointment.lunch_start.nil?
      @appointment.update(lunch_start: Time.zone.now)
      redirect_to appointments_path
    end
  end

  def lunch_end
    @appointment = current_user.appointments.find_by(date: Time.zone.now)
    if !@appointment.nil? and !@appointment.lunch_start.nil? and @appointment.lunch_end.nil?
      @appointment.update(lunch_end: Time.zone.now)
      redirect_to appointments_path
    end
  end

  def check_out
    @appointment = current_user.appointments.find_by(date: Time.zone.now)
    if !@appointment.nil? and ( !@appointment.lunch_end.nil? or @appointment.lunch_start.nil? )
      @appointment.update(out: Time.zone.now)
      redirect_to appointments_path
    end
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
