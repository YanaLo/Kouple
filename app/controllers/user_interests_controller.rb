class UserInterestsController < ApplicationController
  def index
    @user_interests = UserInterest.all
  end

  def new
    @user_interest = UserInterest.new
  end

  def create
    # @user_interest = UserInterest.create
    i = Interest.find_by(hobbies: params[:Interests])
    UserInterest.create(user: current_user, interest: i)
    redirect_to user_path(current_user)
  end

  def edit
  end

  def show
  end



end
