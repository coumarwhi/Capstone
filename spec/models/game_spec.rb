require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:game) {Game.create}
  let(:dragon_health) {100}

  describe "attributes" do
    it "should have default dragon_health set to MAX_DRAGON_HEALTH" do
    expect(game).to have_attributes(dragon_health: game.dragon_health)
    end
  end
end
