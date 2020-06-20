class User < ApplicationRecord
    has_many :carts
    has_many :user_items, through: :carts
end
