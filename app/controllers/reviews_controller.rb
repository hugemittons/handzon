class ReviewsController < ApplicationController

  before_action :authenticate_user!

  def index
    @reviews = Review.all
  end

  def new
    @massage = Massage.find(params[:massage_id])
    @review = Review.new
  end

  def create
    @massage = Massage.find(params[:massage_id])
    @review = Review.new(review_params)
    @review.massage = @massage
    if @review.save
      redirect_to massage_path(@massage)
    else
      @appointment = Appointment.new
      render 'massages/show'
    end
  end

  def update
    @massage = Massage.find(params[:massage_id])
    @review.update(review_params)
    if @review.update
      redirect_to massage_path(@massage)
    else
      render :edit
    end
  end



  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
