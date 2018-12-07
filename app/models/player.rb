class Player < ApplicationRecord
  MAX_PLAYER_HEALTH = 50
  PLAYER_ATTACK = 10
  belongs_to :game

  before_save :set_player_defaults


  def set_player_defaults
    self.health = MAX_PLAYER_HEALTH
  end
end
