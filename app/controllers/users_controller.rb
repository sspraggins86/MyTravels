class UsersController < ApplicationController

  def user_params
   params.require(:user).permit(:first_name, :last_name, :email, :avatar)
  end

  def index
    @users = User.all
    # UserMailer.visit_happened(user).deliver
    # puts '================================'
    # puts "Pages controller index action hit"
    # puts '================================'
  end

    def edit
      @user = User.find(params[:id])
   end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create

    user = User.create(params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar))
      if user.save
          session["user_id"] = user.id.to_s
          redirect_to new_session_path
     # else
        #  redirect_to new_user_path
    end
  end

  def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to user_path(@user)
      else
        #render 'edit', notice: "Something went wrongs"
      end

  end
    


end
  