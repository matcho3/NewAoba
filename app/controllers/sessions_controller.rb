class SessionsController < ApplicationController
    def new
  end



  # def create
  #   user = User.find_by(reservation_id: params[:session][:reservation_id])
  #   if user
  #    login user
  #      #質問
  #      redirect_to user
  #    else
  #      flash.now[:error] = 'Invalid email/password combination'
  #      render 'new'
  #    end
  #  end








#  def create
#     user = User.find_by(reservation_id: params[:session][:reservation_id])
#      # if params[:sort_field].blank?
#      # if !param[:chargeback].nil?
#      # params[:chargeback].blank? # Rails method, what I use
# # params[:chargeback].empty? # true if length == 0, good for arrays/hashes
#     if user
#       login user
#       #質問
#       redirect_to user
#     else
#       flash.now[:error] = 'Invalid email/password combination'
#       render 'new'
#     end
#   end

  # def create2
  #    user = User.find_by('first_name = :first_name AND last_name = :last_name AND birthday = :birthday', first_name: params[:first_name], last_name: params[:last_name], birthday: params[:birthday])
  #    if user
  #      login
  #      redirect_to user
  #    else
  #      flash.now[:error] = 'Invalid name or birthday'
  #      render 'new'
  #    end
  # end


  def create
    
      birthday = params[:session]['birthday(1i)']+'-'+params[:session]['birthday(2i)'] + '-' + params[:session]['birthday(3i)']
      # birthday = params[:session]['birthday(1i)']+'年'+params[:session]['birthday(2i)'] + '月' + params[:session]['birthday(3i)']+ '日' 

      # d = Date.new
      # d = params[:session]['birthday(1i)']+'-'+params[:session]['birthday(2i)'] + '-' + params[:session]['birthday(3i)']
      # str = d.strftime("%Y年 %m月 %d日")
      
      # raise 
    if !params[:session][:reservation_id].blank?     
      @user = User.find_by(reservation_id: params[:session][:reservation_id], birthday: birthday)
    elsif !params[:session][:first_name].blank?     
      # birthday2 = params[:session]['birthday(1i)']+'-'+params[:session]['birthday(2i)'] + '-' + params[:session]['birthday(3i)']
      @user = User.find_by(first_name: params[:session][:first_name], last_name: params[:session][:last_name], birthday: birthday)
    else
      @user = nil
      # flash.now[:error] = '予約番号が間違っています。'
    end
    if @user
      login @user
      #質問
      # redirect_to user_url(id: user.id)
      redirect_to @user
    else
      # flash.now[:error] = '予約番号が間違っています。'
      if params[:session][:reservation_id].blank?
      redirect_to :root, :alert => "予約番号を入力して下さい。"
      # render 'new'
      
      elsif params[:session][:birthday].blank?
      redirect_to :root, :alert => "生年月日が正しくありません。"
      else
         redirect_to :root, :alert => "予約番号を入力して下さい。"
      end
# 誕生日が正しいかつ、予約番号が空の場合

    end
    
  end



# if parent.children && parent.chi redirect_to :root, :alert => "予約番号を入力して下さい。"ldren.singleton?
#   singleton = parent.children.first
#   send_mail_to(singleton)
# end




  # if !params[:first_name].nil?
  #     # @user = User.find_by('first_name = :first_name AND last_name = :last_name AND birthday = :birthday', first_name: params[:first_name], last_name: params[:last_name], birthday: params[:birthday])
  #     @user = User.find_by(first_name: params[:first_name], last_name: params[:last_name], birthday: params[:birthday])
  #     # Permission.find_by(user_id: params[:user_id], project_id: params[:project_id])
  #     if @user
  #       login @user
  #       redirect_to @user
  #     else
  #       flash.now[:error] = 'Invalid name or birthday'
  #       render 'new'
  #     end
  # end
# end 













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