class BooksController < ApplicationController
    # The before action method runs any private helper methods before your action methods, you can also specify which action method you want to run this helper method against.

    before_action :read_books, only: [:index]
    before_action :set_book, only: [:show]

    def index
    end

    def show
    end

    # private methods are helper methods
    private
    def read_books
        @books = Book.all
    end

    # Book.all is a class method on the model class (book) that is in the active record base class that we are inherting from and needs to be stored in an instance variable
    # performs a select * on the table associated with that model and returns all the data
    # this class method should have a singular name as we are calling a class method on the book model class

    def set_book
        if params[:id]
            @book = Book.find(params[:id])
        end 
    end

    # we are populating the singular instance variable (to match the prefix)
    # we are using an if statement againsts the params of :id
    # The above code is saying if we have an id we are going to set @book to be equal to book.find(params[:id])
end
