class Block < ApplicationRecord
  belongs_to :user
  belongs_to :channel
end
