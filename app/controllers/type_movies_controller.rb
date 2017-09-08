class TypeMoviesController < ApplicationController
  before_action :set_type_movie, only: [:show, :edit, :update, :destroy]

  # GET /type_movies
  # GET /type_movies.json
  def index
    @type_movies = TypeMovie.all
  end

  # GET /type_movies/1
  # GET /type_movies/1.json
  def show
  end

  # GET /type_movies/new
  def new
    @type_movie = TypeMovie.new
    @movie = Movie.new
  end

  # GET /type_movies/1/edit
  def edit
  end

  # POST /type_movies
  # POST /type_movies.json
  def create
    @type_movie = TypeMovie.new(type_movie_params)

    respond_to do |format|
      if @type_movie.save
        format.html { redirect_to @type_movie, notice: 'Type movie was successfully created.' }
        format.json { render :show, status: :created, location: @type_movie }
      else
        format.html { render :new }
        format.json { render json: @type_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_movies/1
  # PATCH/PUT /type_movies/1.json
  def update
    respond_to do |format|
      if @type_movie.update(type_movie_params)
        format.html { redirect_to @type_movie, notice: 'Type movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_movie }
      else
        format.html { render :edit }
        format.json { render json: @type_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_movies/1
  # DELETE /type_movies/1.json
  def destroy
    @type_movie.destroy
    respond_to do |format|
      format.html { redirect_to type_movies_url, notice: 'Type movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_movie
      @type_movie = TypeMovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_movie_params
      params.require(:type_movie).permit(:category)
    end
end
