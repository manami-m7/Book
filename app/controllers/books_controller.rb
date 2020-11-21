class BooksController < ApplicationController
  def top
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create

  end

  def edit
  end


end
