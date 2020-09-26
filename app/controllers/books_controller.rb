class BooksController < ApplicationController
    before_action :move_to_index, except: [:index, :show, :search]
    before_action :set_item, only: [:show, :edit,:update,:destroy]

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
    end

    def edit
    end
  
    def update    
      if @book.update(book_params)
        redirect_to root_path
      else
        render :edit
      end
    end

    def destroy
        if @book.destroy
        redirect_to root_path
        else
          render :show
        end
    end

    def search
      @books = Book.search(params[:keyword])
    end

    private
    def book_params
        params.require(:book).permit(:name,:topic,:image,:text).merge(user_id: current_user.id)
    end

    def set_item
        @book = Book.find(params[:id])
    end


    def move_to_index
        unless user_signed_in?
          redirect_to action: :index
        end
    end
end
