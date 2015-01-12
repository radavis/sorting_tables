require 'rails_helper'

RSpec.describe "GameConsoles", :type => :request do
  describe "GET /game_consoles" do
    it "works! (now write some real specs)" do
      get game_consoles_path
      expect(response).to have_http_status(200)
    end
  end
end
