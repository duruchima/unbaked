class DoughsController < ApplicationController
    before_action :find_dough,only: [:show, :edit, :update]
	
    def index
        @doughs=Dough.all
        render json:@doughs
    end

    def show
        render json:@dough
    end
    


    def create
        @dough= Dough.new(dough_params)
        @dough.save

        render json:@dough
    end
    
    def update
        @dough.update(params.require(:dough).permit!)
        if @dough.valid?
            render json:@dough
        else
            flash[:errors]=@dough.erors.full_messages
        end
    end

    def delete 
        Dough.find(params[:id]).delete
    end

    private

    def dough_params
        params.require(:dough).permit(:name, :rating, :difficulty_level, :bake_time)
    end

    def find_dough
        @dough = Dough.find(params[:id])
    end
end
