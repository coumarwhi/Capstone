require 'rails_helper'

RSpec.describe GamesController, type: :controller do
  let(:my_game) {Game.create}

  describe "POST #create" do
    it "returns http success" do
      post :create
      expect(response).to redirect_to(game_path(1))
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: my_game.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #attack" do
    it "returns http success" do
      get :attack, params: { id: my_game.id }
      expect(response).to redirect_to(game_path(1))
    end
  end

end
