class ChannelSerializer < ActiveModel::Serializer
attributes :id, :title
has_many :blocks
has_many :users, through: :blocks

end