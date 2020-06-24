class CartsController < ApplicationController 

    # this show route will show the contents of cart rather than cart
    def show
        @cart = Cart.find(params[:id])
        @cart_items = @cart.cart_items

        render json: @cart_items.to_json
    end

    # def show
    #     @cart = Cart.find(params[:id])
    #     render json: @cart.to_json
    # end 

    def index 
        @carts = Cart.all 
        render json: @carts.to_json
    end 

    # route checked with postman
    def new
        @cart = Cart.create(
            user_id: cart_params[:user_id], 
            current_cart: true
        )

        render json: @cart
    end

    private
    def cart_params
        params.permit(:user_id)
    end 

end
