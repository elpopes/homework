class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index
  end

  def show
    @book = Book.find_by(id: params[:id])
    if @book
        render :show
    else 
        redirect_to books_url
    end
  end

  def new
    render :new
  end

  def create

    render json: "creating book"
  end
end
