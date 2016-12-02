class MassagesController < ApplicationController

before_action :set_massage, only: [:show, :edit, :update, :destroy ]

  def index
    @massages = Massage.all
  end

  def show
    @appointment = Appointment.new
    @review = Review.new
  end

  def new
    @massage = Massage.new
  end

  def create
    @massage = Massage.new(massage_params)
    @massage.user = current_user
    @massage.save
    redirect_to massage_path(@massage)
  end

  def edit
  end

  def update
    @massage.update(massage_params)
    redirect_to massage_path(@massage)
  end

  def destroy
    @massage.destroy
    redirect_to massages_path
  end



  private

  def set_massage
    @massage = Massage.find(params[:id])
  end

  def massage_params
    params.require(:massage).permit(:category, :description, :tagline, :price, :city, :length, :photo, :photo_cache)
  end

end
