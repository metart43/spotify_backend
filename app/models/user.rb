class User < ApplicationRecord
  has_one :hidden_gem
  has_many :songs, through: :hidden_gem
end
