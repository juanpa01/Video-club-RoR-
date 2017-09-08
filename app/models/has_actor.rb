class HasActor < ApplicationRecord
  belongs_to :movie
  belongs_to :actor
end
