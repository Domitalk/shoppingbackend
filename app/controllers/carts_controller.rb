class CartsController < ApplicationController 

    def show
        @cart = Cart.find(params[:id])
        @cart_items = @cart.cart_items

        render json: @cart_items.to_json
    end

    def create
        @cart = Cart.create(
            user_id: cart_params.user_id, 
            current_cart: true
        )

        render json: @cart
    end

    private
    def cart_params
        params.permit(:user_id)
    end 

end
