class UserSerializer < ActiveModel::Serializer
    attributes :name

    has_many :blocks
    has_many :channels, through: :blocks
end