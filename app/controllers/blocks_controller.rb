class BlocksController < ApplicationController
    #full CRUD

        def index
            blocks = Block.all
            render json: blocks
        end

        def show
            block = Block.find_by(id: params[:id])
            render json: block
    end

        def create 
            block = Block.create(block_params)
            render json: block
        end

        def update
            block = Block.find_by(id: params[:id])
            block.update(block_params)
            render json: block
        end

        def destroy 
            block = Block.find_by(id: params[:id])
            block.destroy
            render json: {"Message": "block was destroyed"}
        end

        private
        def block_params
            params.require(:block).permit(:id, :title, :description, :user_id, :channel_id)
        end
end

# block = Block.create(id: params[:id], title: params[:title], description: params[:description], channel_id: params[:channel_id], user_id: params[:user_id])

# def show
#     sighting = Sighting.find_by(id: params[:id])
#     render json: sighting.to_json(:include => {
#       :bird => {:only => [:name, :species]},
#       :location => {:only => [:latitude, :longitude]}
#     }, :except => [:updated_at])
#   end 
# join model = sighting

# class SightingsController < ApplicationController
#     def index
#       sightings = Sighting.all
#       render json: SightingSerializer.new(sightings).to_serialized_json
#     end
  
#     def show
#       sighting = Sighting.find_by(id: params[:id])
#       render json: SightingSerializer.new(sighting).to_serialized_json
#     end
#   end 