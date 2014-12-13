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

 def create2
    user = User.find_by('first_name = :first_name AND last_name >= :last_name AND birthday => :birthday', first_name: params[:first_name], last_name: params[:last_name], birthday: params[:birthday])
    if user
      sign_in
      redirect_to user
    else
      flash.now[:error] = 'Invalid name or birthday'
      render 'new'
    end
 end

  def destroy
    sign_out
    redirect_to root_url
  end
end



# private

#  def user_params
#       params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation)
#  end

# end