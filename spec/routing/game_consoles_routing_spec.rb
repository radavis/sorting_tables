require "rails_helper"

RSpec.describe GameConsolesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/game_consoles").to route_to("game_consoles#index")
    end

    it "routes to #new" do
      expect(:get => "/game_consoles/new").to route_to("game_consoles#new")
    end

    it "routes to #show" do
      expect(:get => "/game_consoles/1").to route_to("game_consoles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/game_consoles/1/edit").to route_to("game_consoles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/game_consoles").to route_to("game_consoles#create")
    end

    it "routes to #update" do
      expect(:put => "/game_consoles/1").to route_to("game_consoles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/game_consoles/1").to route_to("game_consoles#destroy", :id => "1")
    end

  end
end
