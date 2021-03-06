class ChannelSerializer

    def initialize(channel_object)
        @channel = channel_object
    end


    def to_serialized_json
        @channel.to_json :except => [:updated_at]
      end

end