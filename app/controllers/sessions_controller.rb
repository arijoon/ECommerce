class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    # Sign the user in. For this example we'll not add password authentication
    if user
      #sign in
      sign_in(user)
      redirect_to root_url
    else
      flash[:error] = 'Invalid username'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end
