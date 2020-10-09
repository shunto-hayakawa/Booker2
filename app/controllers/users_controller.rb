class UsersController < ApplicationController

	before_action :authenticate_user!
	# 開けるのはログインしているユーザーのみ


  # All Users
  def index
  	@users = User.all
    @user = current_user
    @book = Book.new
  end


  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def mypage
  	redirect_to user_path(current_user)
  end

  def edit
  	# 編集するユーザーが本人じゃない場合はユーザーページにリダイレクトする
    # これをしないと、ログインさえしていれば、"/users/5/edit"みたいな適当なurlにアクセスすると、他の人のプロフィール編集画面を表示できてしまう
    @user = User.find(params[:id])
    if current_user != @user
      redirect_to user_path(current_user.id)
    end
  end

  def update
	 # アップデートがうまくいけば、マイページに戻利、
	 # うまくいかなければ、もう一度編集ページを表示する
	 @user = User.find(params[:id])
	 if @user.update(user_params)
	    redirect_to user_path(@user), notice: 'You have updated user successfully.'
	 else
	    render 'edit'
     end
  end

  private

  def user_params
     params.require(:user).permit(:name, :introduction, :profile_image)
   end
end
