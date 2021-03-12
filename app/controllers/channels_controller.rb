class ChannelsController < ApplicationController

    def index
        channels = Channel.all
        render json: channels
    end

    def show
        channel = Channel.find_by(id: paramas[:id])
        render json: channel
    end

    def create
        channel = Channel.create(id: params[:id], title: params[:title])
        render json: channel
    end

    def destroy 
        channel = Channel.find_by(id: params[:id])
        channel.destroy
        render json: {"Message": "channel was destroyed"}
    end

    # private 

    # def channel_params
    #     params.require(:channel).permit(:title)
    # end

end
