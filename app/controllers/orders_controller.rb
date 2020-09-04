class OrdersController < ApplicationController
    before_action :find_order,only: [:show, :edit, :update]
	
    def index
        @orders=Order.all
        render json:@orders
    end

    def show
        render json:@order
    end
    


    def create
        @order= Order.new(order_params)
        @order.save

        render json:@order
    end
    
    def update
        @order.update(params.require(:order).permit!)
        if @order.valid?
            render json:@order
        else
            flash[:errors]=@order.erors.full_messages
        end
    end

    def delete 
        Order.find(params[:id]).delete
    end

    private

    def order_params
        params.require(:order).permit(:user_id, :bakery_id, :price, :dough)
    end

    def find_order
        @order = Order.find(params[:id])
    end
end
