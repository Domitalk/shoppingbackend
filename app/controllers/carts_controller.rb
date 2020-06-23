class CartsController < ApplicationController 

    def show
        @cart = Cart.find(params[:id])
        render json: @cart.to_json
    end

    def create
        
    end

    def get_all_past_carts

    end

    private
    def cart_params
        params.permit(:user_id)
    end 


end
