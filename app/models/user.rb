class User < ApplicationRecord
  has_many :hidden_gems
  has_many :songs, through: :hidden_gems
end
