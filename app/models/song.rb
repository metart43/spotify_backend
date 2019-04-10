class Song < ApplicationRecord
  belongs_to :hidden_gem
  belongs_to :user
end
