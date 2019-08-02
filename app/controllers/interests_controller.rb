class InterestsController < ApplicationController
  def index
    @interests = Interest.all
  end

  def new
    @interests = Interest.all
    @interest = Interest.new
  end

  def create
    @interest = Interest.create(params[:id])
  end
  def edit
  end

  def show
  end
end
