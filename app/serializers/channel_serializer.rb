class ChannelSerializer < ActiveModel::Serializer
attributes :title
has_many :blocks
has_many :users, through: :blocks

    # def initialize(channel_object)
    #     @channel = channel_object
    # end


    # def to_serialized_json
    #     @channel.to_json :except => [:updated_at]
    #   end

end