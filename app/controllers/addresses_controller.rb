class AddressesController < ApplicationController
    before_action :find_address,only: [:show, :edit, :update]
	
    def index
        @addresses=Address.all
        render json:@addresses
    end

    def show
        render json:@address
    end
    


    def create
        @address= Address.new(address_params)
        @address.save

        render json:@address
    end
    
    def update
        @address.update(params.require(:address).permit!)
        if @address.valid?
            render json:@address
        else
            flash[:errors]=@address.erors.full_messages
        end
    end

    def delete 
        Address.find(params[:id]).delete
    end

    private

    def address_params
        params.require(:address).permit(:user_id, :street, :city, :state, :zip_code)
    end

    def find_address
        @address = Address.find(params[:id])
    end
end
