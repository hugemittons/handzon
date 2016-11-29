class PagesController < ApplicationController

  def query
    @search_results = Massage.where city: params[:city], category: params[:category]
    return @search_results
  end

  def search
    @massages = Massage.all
  end
end
