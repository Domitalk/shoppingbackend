class ItemsController < ApplicationController 

    def index
        @items = Item.all
        render json: @items.to_json
    end
    # def create
    #     @item = Item.create(item_params)
    #     render json: @item.to_json
    # end
    def show
        @item = Item.find(params[:id])
        render json: @item.to_json
    end 

    # private 
    # def item_params
    #     params.permit(:name, :price)
    # end 
    
end 