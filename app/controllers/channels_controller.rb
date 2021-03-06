class ChannelsController < ApplicationController

    def index
        channels = Channel.all
        render json: ChannelSerializer.new(channels).to_serialized_json
    end

    def show
        channel = Channel.find_by(id: paramas[:id])
        render json: ChannelSerializer.new(channel).to_serialized_json
    end

    def new

    end

    def create

    end

end
