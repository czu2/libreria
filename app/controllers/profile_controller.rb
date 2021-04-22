class ProfileController < ApplicationController
    before_action :authenticate_user!

    def show
        @books = Book.where('user_id = ? AND state = 1', current_user.id)
        # current_user.books.select { |book| book.state == 'reserved' }
    end

end