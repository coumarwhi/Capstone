class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new
    @player.save
  end
end
