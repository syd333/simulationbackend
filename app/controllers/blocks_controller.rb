class BlocksController < ApplicationController
    #full CRUD

        def index
            blocks = Block.all
            render json: blocks, except: [:created_at, :updated_at]
        end

        def show
            block = Block.find(params[:id])
            render json: block
        else
            render json: {message: 'Block not found'}
        end
    end

        # def new
        #     @block = Block.new
        # end

        # def create 
        #     @block = Block.new(block_params)
        #     render json:
        # end

        # def edit
        #     @block = Block.find(params[:id])
        #     render json:
        # end

        # def updated
        #     @block.update(block_params)
        # end

        private
        def block_params
            params.require(:block).permit(:title, :description, :user_id, :channel_id)
        end
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