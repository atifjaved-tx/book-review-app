class AuthorsController < ApplicationController
  before_action :authenticate_user!
  :load_and_authorize_resource

  def index
    @author = Author.all
  end
  def new
    @author = Author.new
  end
  def create
    @author = Author.new(book_params)

    if @author.save
            flash[:notice] = 'Book added!'  
      redirect_to @author
    else
      flash[:error] = 'Failed to add book!'   
      render new 
    end
  end

   def show
    @author = Author.find(params[:id])
  end



  def edit
    @author = Author.find(params[:id])
  end


  def update
    @author= Author.find(params[:id])

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



end
private

  def book_params
    params.require(:author).permit(:bookname,:authorname,:image)
  end
