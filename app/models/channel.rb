class Channel < ApplicationRecord
    has_many :blocks
    has_many :users, through: :blocks
end
