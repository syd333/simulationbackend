class BlockSerializer < ActiveModel::Serializer
    attributes :title, :description, :user_id, :channel_id

    belongs_to :user
    belongs_to :channel
end