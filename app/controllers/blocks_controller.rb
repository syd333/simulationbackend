class BlocksController < ApplicationController
    #full CRUD

        def index
            @blocks = Block.all
        end

        def show
            @block = Block.find(params[:id])
        end

        def new
            @block = Block.new
        end

        def create 
            @block = Block.new(block_params)
            render :json
        end

        def edit
            @block = Block.find(params[:id])
        end

        def updated
            @blocl.update(block_params)
        end

        private
        def block_params
            params.require(:block).permit(:title, :description, :user_id, :channel_id)
        end
end
