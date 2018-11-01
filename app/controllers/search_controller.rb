class SearchController < ApplicationController
    skip_before_action :verify_authenticity_token
    protect_from_forgery with: :null_session
    protect_from_forgery prepend: true
    def show
      search
    end
  
  def new
      @search = Search.new
  
      respond_to do |format|
        format.html
        format.js
      end
  end
  
  def create
      @search = Search.new(search_params)
      if @search.save
          redirect_to @search
      else
          render 'new'
      end
  end

  def search
    @search = Search.where(course: params[:course]).first
   #  byebug
    respond_to do |format|
        format.js
      end
  end
  
  private
  
  def search_params
    params.permit(:course, :subject, :usesubj)
  end
  end
  