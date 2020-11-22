class BooksController < ApplicationController
  def top
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def edit
  end

  def  destroy
    @book = Book.find_by(id: params[:id])
      if @book.destroy
          redirect_to books_path
      else
          render :edit
      end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
