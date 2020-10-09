class BooksController < ApplicationController

	before_action :authenticate_user!

	def index
		@books = Book.all
		@book = Book.new
		@user = User.find(current_user.id)
		@users = User.all
	end


	def create
		@book = Book.new(book_params)
		@book.user_id = current_user.id
		if @book.save(book_params)
			redirect_to book_path(@book), notice: 'You have creatad book successfully.'
		else
			@user = User.find(current_user.id)
		    @books = Book.all
		    @users = User.all
			render "index"
		end
	end

	def show
		@books = Book.all
		@booker = Book.find(params[:id])
		@book = Book.new
		@user = User.find(current_user.id)
	end

	def edit
		@book = Book.find(params[:id])
	    unless @book.user == current_user
	     redirect_to books_path
	    end
	end

	def update
		@book = Book.find(params[:id])
	  	if @book.update(book_params)
	    redirect_to book_path(@book.id), notice: 'You have updated book successfully.'
		else
			render "edit"
		end
	end

	def destroy
		@book = Book.find(params[:id])
		if book.destroy
	  	redirect_to books_path, notice: "Book was successfully destroyed."
	    end
	end

	private

	def book_params
		params.require(:book).permit(:title, :body)
	end
end
