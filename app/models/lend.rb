class Lend < ApplicationRecord
  belongs_to :movie
  belongs_to :user
end
