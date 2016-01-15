class GamesController < ApplicationController

  def index
    if params[:category]
      @games = Game.search(params[:category]).paginate(page: params[:games_page])
    else
      @games = Game.all.paginate(page: params[:games_page])
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    redirect_to @game
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    redirect_to @game
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  private
    def game_params
      params.require(:game).permit(:name, :category, :equipment, :num_players, :num_teams, :game_duration, :description, :image_url)
    end

end
