class Admin::UsersController < ApplicationController
    
  def index
    @users = User.all  
  end
  
  def show
    @user = User.find(params[:id])  
  end    
    
  def new
    @user = User.new  
  end
    
  def edit
    @user = User.find(params[:id])  
  end    
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      redirect_to admin_users_path(@user), notice: "ユーザー「#{@user.name}」を登録しました。"
    else
      render :new
    end    
  end
  
  def update
    @user = User.find(params:id)
    
    if @user.update
      redirect_to admin_users_path(@user), notice: "ユーザー「#{@user.name}」を更新しました。"
    else
      render :new
    end    
  end
 
  def destroy
    @user = User.find(params:id)
    
    if @user.destroy
      redirect_to admin_users_path(@user), notice: "ユーザー「#{@user.name}」を削除しました。"
    end    
  end      
    
  private
  def user_params
    params.require(:user).permit(:name, :email, :admin, :password, :password_confirmation)   
  end      
end