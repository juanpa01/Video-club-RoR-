class Actor < ApplicationRecord
  has_many :has_actors
  has_many :movies, through: :has_actors
end
