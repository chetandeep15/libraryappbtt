class BooksController < ApplicationController
	def index
    @book = Book.all
  end
def show
    @book = Book.find(params[:id])
end
def new
 @book = Book.new
end
def edit
  @book = Book.find(params[:id])
end
def create
  @book = Book.new(book_params)
 
  if @book.save
    redirect_to @book
  else
    render 'new'
  end
end

def show
    @book = Book.find(params[:id])
    @issue = BookIssue.where("book_id = ?" , params[:id]).count

end
private
  def book_params
    params.require(:book).permit(:title, :author, :total)
  end
end
