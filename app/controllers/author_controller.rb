class AuthorController < ApplicationController
  def index
    @author = Author.all
  end
  def show
    @author = Author.find{param[:id]}
   end
  def new
    @author = Author.new
  end
  def create
    @author = Author.new(author_params)
     if @author.save
      redirect_to @author
    else
      render :new
    end
  end
   def edit
    @author = Author.find(params[:id])
  end
   def update
    @author = Author.find(params[:id])

    if @author.update(book_params)
      redirect_to @author
    else
      render :edit
    end
  end
  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    redirect_to root_path
  end
     private
    def author_params
      params.require(:author).permit(:tital, :body)
    end
  
end
