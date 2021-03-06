class User < ApplicationRecord
    has_many :blocks
    has_many :channels, through: :blocks
end
