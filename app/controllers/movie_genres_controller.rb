class MovieGenresController < ApplicationController
  def new
    @movie_genre = MovieGenre.new
  end

  def create
    @movie_genre = MovieGenre.new(params.require(:movie_genre).permit(:name))
    if @movie_genre.save
      flash[:notice] = "Gênero #{@movie_genre.name} cadastrado com sucesso!"
      return redirect_to new_movie_genre_path
    end
    render :new
  end

  def edit
    @movie_genre = MovieGenre.find(params[:id])
  end

  def update
    @movie_genre = MovieGenre.find(params[:id])
    if @movie_genre.update(params.require(:movie_genre).permit(:name))
      flash[:notice] = "Gênero editado com sucesso!"
      return redirect_to root_path
    end
    render :edit
  end
end
