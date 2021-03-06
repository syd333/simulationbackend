class ChannelsController < ApplicationController

    def index
        channels = Channel.all
        render json: channels
        # ChannelSerializer.new(channels).to_serialized_json
    end

    def show
        channel = Channel.find_by(paramas[:id])
        render json: channel
        # ChannelSerializer.new(channel).to_serialized_json
    end

    def new
        channel = Channel.new
        render json: channel
    end

    def create
        channel = Block.new(channel_params)
        render json: channel
    end

    def channel_params
        params.require(:channel).permit(:title)
    end

end
