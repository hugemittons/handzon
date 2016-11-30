class MassagesController < ApplicationController

#before_action :massage, only: [:show, :index]

  def index
    @massages = Massage.all
  end

  def show
    @appointment = Appointment.new
  end

  def new
  end

  def create
    @massage = Massage.new(massage_params)

    if @massage.save
      redirect_to @massage
    else
      render :new
    end
  end

  def update
    @massage = Massage.create(massage_params)
    redirect_to massage_path(@massage)
  end

  def destroy
    @massage.destroy
    redirect_to massage_path
  end

  private

  def set_massage
    @massage = Massage.find(params[:id])
  end

  def massage_params
    params.require(:massage).permit(:category, :description, :tagline, :price, :length, :user_id)
  end

end
