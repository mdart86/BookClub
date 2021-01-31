class Author < ApplicationRecord
    has_many :books

    def name
        return "#{first_name} #{last_name}"
    end
    # this instance method will get the first and last name from the author model class in the database. Rails magic means it doesn't need to refer to an instance variable
end


