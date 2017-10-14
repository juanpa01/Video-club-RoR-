class MoviesController < ApplicationController
  before_action :id_movie, only: [:show, :edit, :destroy]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.actor_ids = params[:actors]
    #raise params.to_yaml
    if @movie.save
     redirect_to @movie
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @movie = id_movie
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private

  def id_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :type_movie_id, :description, :actors => [])
  end

end
