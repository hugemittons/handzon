class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show]
  before_action :find_massage, only: [:create]
  # before_action :find_user, only: [:show]
  # ^ not needed, device provides access on every page

  def show
  end

  def create
    # need: datetime, user_id and massage_id
    @appointment = current_user.appointments.build(appointment_params)
    # ^ user_id and datetime..
    # ^^ creates 'appointments.build' and sets the user_id' to 'current_user_id'
    # ^^^ appointement_params(datetime) are passed to the 'new appointment instance' from the form
    @appointment.massage = @massage
    # ^ params is the massage hash with info about massage params ={massage_id: 11, city:"barcelona",category:...}
    # ^^ the path requires massage_id
    # ^^^ path: massage/massage_id/appointments
    @appointment.save
    # redirect
  end

  private

  def appointment_params
    params.require(:appointment).premit(:datetime)
  end

  def find_massage
    @massage = Massage.find(params[:massage_id])
  end
  # def find_user
  #   @user = User.find(params[:user_id])
  # end
  # ^ above is not used bc we use device/current_user
end
