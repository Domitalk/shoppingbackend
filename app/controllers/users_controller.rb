class UsersController < ApplicationController 

    def index
        @users = User.all
        render json: @users.to_json
    end
    
    #route checked with postman
    def new
        @user = User.create(user_params)
        render json: @user.to_json
    end
    def show
        @user = User.find(params[:id])
        render json: @user.to_json
    end 

    private 
    def user_params
        params.permit(:first_name, :middle_name, :last_name, :user_name, :profile_image)
    end 
    
end 