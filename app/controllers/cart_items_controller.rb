class CartItemsController < ApplicationController

    def new 
        @cart_item = CartItem.create(
            cart_items_params
        )
    end 

    private 
    def cart_items_params
        params.permit(:cart_id, :item_id)
    end 
end 