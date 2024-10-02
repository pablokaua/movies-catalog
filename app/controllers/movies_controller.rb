class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(:title, :release_year, :synopsis, :country, :duration, :director_id, :movie_genre_id))
    if @movie.save
      flash[:notice] = "Filme #{@movie.title} cadastrado com sucesso!"
      return redirect_to root_path
    end
    render :new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(params.require(:movie).permit(:title, :release_year, :synopsis, :country, :duration, :director_id, :movie_genre_id))
      flash[:notice] = "Filme editado com sucesso!"
      return redirect_to root_path
    end
    render :edit
  end
end
