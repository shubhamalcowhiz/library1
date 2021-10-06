class BooksController < ApplicationController
  def create
    @author = Author.find(params[:author_id])
    @book = @author.book.create(book_params)
    redirect_to article_path(@author)
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end
end
