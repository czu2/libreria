class Book < ApplicationRecord
    enum state: [ :available, :reserved, :paid ]
    belongs_to :user, optional: true
end
