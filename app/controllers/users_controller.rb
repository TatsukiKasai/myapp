class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end  
  
  def create
    @user = User.new(params.require(:user).permit(:title,:first_date,:final_date,:all_day,:sch_memo))
    if @user.save
      flash[:notice] = "スケジュールを新規登録しました。"
      redirect_to :users
    else
      render"new"
    end
  end
  
  def show
    @user = User.find(params[:id])
  end 
  
  def edit
    @user = User.find(params[:id])
  end 
  
  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:title,:first_date,:final_date,:all_day,:sch_memo))
    flash[:notice] = "スケジュールを更新しました"
    redirect_to:users
    end
  end 
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
     flash[:flash] = "スケジュールを削除しました"
     redirect_to:users
  end 
end 