class ChannelSerializer < ActiveModel::Serializer
attributes :id, :title, :blocks
#blocks will be added in a nested array in json then pass ID's in frontend 
has_many :blocks
has_many :users, through: :blocks

end