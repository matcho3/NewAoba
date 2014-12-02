class SessionsController < ApplicationController
  def new
  end

 def create
    user = User.find_by(reservation_id: params[:session][:reservation_id])
    if user
      sign_in user
      #質問
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
