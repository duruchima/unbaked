class BakeriesController < ApplicationController
    before_action :find_bakery,only: [:show, :edit, :update]
	
		def index
			@bakeries=Bakery.all
			render json:@bakeries
		end
	
		def show
			render json:@bakery
		end
		

	
		def create
			@bakery= Bakery.new(bakery_params)
			@bakery.save
	
			render json:@bakery
		end
		
		def update
			@bakery.update(params.require(:bakery).permit!)
			if @bakery.valid?
				render json:@bakery
			else
				flash[:errors]=@bakery.erors.full_messages
			end
		end
	
		def delete 
			Bakery.find(params[:id]).delete
		end
	
		private
	
		def bakery_params
            params.require(:bakery).permit(:dough_id, :name, :address)
        end
    
        def find_bakery
            @bakery = Bakery.find(params[:id])
        end
end
