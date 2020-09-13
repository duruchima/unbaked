class InstructionsController < ApplicationController
    before_action :find_instruction,only: [:show, :edit, :update]
	
    def index
        @instructions=Instruction.all
        render json:@instructions
    end

    def show
        render json:@instruction
    end
    


    def create
        @instruction= Instruction.new(instruction_params)
        @instruction.save

        render json:@instruction
    end
    
    def update
        @instruction.update(params.require(:instruction).permit!)
        if @instruction.valid?
            render json:@instruction
        else
            flash[:errors]=@instruction.erors.full_messages
        end
    end

    def delete 
        Instruction.find(params[:id]).delete
    end

    private

    def bakery_params
        params.require(:instruction).permit(:dough_id, :sweetness)
    end

    def find_bakery
        @instruction = Bakery.find(params[:id])
    end
end
