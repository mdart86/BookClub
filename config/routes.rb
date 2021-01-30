Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "books#index"
  get "/books", to: "books#index"
  get "/books/:id", to: "books#show", as: "book"
end
# get methods gets the page from the server
# the route with books/:id as your URL and the books#show with the prefix of books will show the data of a book to the user