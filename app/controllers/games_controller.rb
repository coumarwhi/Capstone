class GamesController < ApplicationController
  def create
    @game = Game.new
    @game.save
    redirect_to game_path(@game.id)
  end

  def show
    @game = Game.find(params[:id])
  end

  def attack
    @game = Game.find(params[:id])
    @game.attack
    redirect_to game_path(@game.id)
  end
end
