def create
	if !params[:reservation_id].nil?
		user = User.find_by(reservation_id: params[:session][:reservation_id])
		if user
      	sign_in user
      	#質問
      	redirect_to user
    	else
      	flash.now[:error] = 'Invalid email/password combination'
      	render 'new'
      	end
    else
    	user = User.find_by('first_name = :first_name AND last_name = :last_name AND birthday = :birthday', first_name: params[:first_name], last_name: params[:last_name], birthday: params[:birthday])
    	if user
      	sign_in
      	redirect_to user
    	else
      	flash.now[:error] = 'Invalid name or birthday'
      	render 'new'
        end
    end
end 