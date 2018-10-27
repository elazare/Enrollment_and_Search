class SearchController < ApplicationController
  def new
    @search = Search.find(params[:id])
  end

  def create
  end

  def show
  end
end
