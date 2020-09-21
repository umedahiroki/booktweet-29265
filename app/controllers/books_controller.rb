class BooksController < ApplicationController
    def index
        @books = Book.all.order("created_at DESC")
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to root_path
            else
            render :index
        end
    end

    def show
        @book = Book.find(params[:id])
    end

    def edit
        @book = Book.find(params[:id])
    end
  
    def update    
      @book = Book.find(params[:id])
      if @book.update(book_params)
        redirect_to root_path
      else
        render :edit
      end
    end

    def destroy 
        @book = Book.find(params[:id])
        if @book.destroy
        redirect_to root_path
        else
          render :show
        end
      end
    

    private
    def book_params
        params.require(:book).permit(:name,:topic,:image,:text).merge(user_id: current_user.id)
    end
end
