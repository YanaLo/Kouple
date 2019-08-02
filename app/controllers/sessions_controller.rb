class SessionsController < ApplicationController
  def login
    # session[:user_id] = @user.id
    # redirect_to @user
  end

  def create
    @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])

            session[:user_id] = @user.id

            redirect_to user_path(@user)
        else
            flash[:message] = "Stop trying to be someone else"
            render :login
        end
  end

  def destroy
     session[:user_id] = nil
  end
end
