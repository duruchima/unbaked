class UsersController < ApplicationController
    before_action :find_user,only: [:show, :edit, :update]
	
    def index
        @users = User.all
        render json:@users
    end

    def show
        render json:@user
    end
    


    def create
        @user = User.new(user_params)
        @user.save

        render json:@user
    end
    
    def update
        @user.update(params.require(:user).permit!)
        if @user.valid?
            render json:@user
        else
            flash[:errors]=@user.erors.full_messages
        end
    end

    def delete 
        User.find(params[:id]).delete
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :email, :encrypted_password, :age, :zip_code)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
