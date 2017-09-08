class TypeMovie < ApplicationRecord
  belongs_to :movie, :optional => true
end
