class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true;
  has_many :type_movies
  accepts_nested_attributes_for :type_movies
  has_many :has_actors
  has_many :actors, through: :has_actors
  after_create :save_actors

  #Custom setter
  def actors=(value)
    @actors = value
  end

  private

  def save_actors
    #raise @actors.to_yaml
    @actors.each do |actor_id|
      HasActor.create(movie_id: self.id, actor_id: actor_id)
    end
  end
end
