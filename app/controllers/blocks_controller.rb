class BlocksController < ApplicationController
    #full CRUD

        def index
            blocks = Block.all
            render json: blocks
        end

        def show
            block = Block.find(id: params[:id])
            render json: block
    end

        def create 
            block = Block.create()
            render json: block
        end

        def edit
            block = Block.find(params[:id])
            render json: block
        end

        def updated
            block.update(block_params)
        end

        def destroy 
            block.destroy
        end

        # private
        # def block_params
        #     params.require(:block).permit(:title, :description, :user_id, :channel_id)
        # end
end


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