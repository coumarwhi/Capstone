require 'rails_helper'

RSpec.describe Player, type: :model do
  let(:player) {Player.create}
  let(:health) {50}

  describe "health" do
    it "should have default player_health set to MAX_PLAYER_HEALTH" do
      expect(player).to have_attributes(health: player.health)
    end
  end
end
