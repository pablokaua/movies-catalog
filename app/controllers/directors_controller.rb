class DirectorsController < ApplicationController
  def new
    @director = Director.new
  end

  def create
    @director = Director.new(params.require(:director).permit(:name, :nationality, :bith_date, :favorite_genre_id))
    if @director.save
      flash[:notice] = "Diretor #{@director.name} cadastrado com sucesso!"
      return redirect_to root_path
    end
    render :new
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])
    if @director.update(params.require(:director).permit(:name, :nationality, :bith_date, :favorite_genre_id))
      flash[:notice] = "Diretor editado com sucesso!"
      return redirect_to root_path
    end
    render :edit
  end
end
