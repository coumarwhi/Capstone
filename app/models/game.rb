MAX_DRAGON_HEALTH = 100
DRAGON_ATTACK = 10

class Game < ApplicationRecord
  has_one :player

  before_create :set_game_defaults


  def set_game_defaults
    self.dragon_health = MAX_DRAGON_HEALTH
  end

  def attack
    # self.dragon_health = self.dragon_health - rand(1..Player::PLAYER_ATTACK)
    # self.save
    self.update_attributes(dragon_health: self.dragon_health - rand(1..Player::PLAYER_ATTACK))
  end
end
