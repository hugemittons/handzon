class PagesController < ApplicationController
  def search
    @search_results = Massage.where city: params[:city], category: params[:category]
    return @search_results
  end
end
