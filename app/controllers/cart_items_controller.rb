class CartItemsController < ApplicationController

    #checked with postman
    def new 
        @cart_item = CartItem.create(
            cart_id: cart_items_params[:cart_id],
            item_id: cart_items_params[:item_id],
            quantity: 1
        )
        render json: @cart_item.to_json
    end 

    private 
    def cart_items_params
        params.permit(:cart_id, :item_id)
    end 
end 