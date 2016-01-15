class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :add_favorite, :remove_favorite]

  def index
      # does the same thing as set_game in the before_action
    # if current_user
    #   @games = current_user.games
    # else
    #   @games = Game.all
    # end
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
      # does the same thing as set_game in the before_action
    # @game = current_user.games.create(game_params)
    @game = Game.create(game_params.merge(user: current_user))
    redirect_to @game
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params.merge(user: current_user))
    redirect_to @game
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  def add_favorite
    @game = Game.find(params[:id])
    @game.favorites.create(user: current_user)
    redirect_to game_path(@game)
  end

  def remove_favorite
    @game = Game.find(params[:id])
    @game.favorites.where(user: current_user).destroy_all
    redirect_to game_path(@game)
  end

  private
    def game_params
      params.require(:game).permit(:name, :category, :equipment, :num_players, :num_teams, :game_duration, :description, :image_url)
    end

    def set_game
      @game = Game.find(params[:id])
    end

end
