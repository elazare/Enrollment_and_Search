class SearchesController < ApplicationController
  def show
    @search = Search.find(params[:id])
end

def new
    @search = Search.new
end

def create
    @search = Search.new(search_params)
    if @search.save
        redirect_to @search
    else
        render 'new'
    end
end

private

def search_params
  params.require(:search).permit(:course, :subject, :usesubj)
end
end
