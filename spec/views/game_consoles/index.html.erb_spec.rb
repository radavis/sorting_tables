require 'rails_helper'

RSpec.describe "game_consoles/index", :type => :view do
  before(:each) do
    assign(:game_consoles, [
      GameConsole.create!(
        :name => "Name",
        :manufacturer => "Manufacturer",
        :year => 1
      ),
      GameConsole.create!(
        :name => "Name",
        :manufacturer => "Manufacturer",
        :year => 1
      )
    ])
  end

  it "renders a list of game_consoles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Manufacturer".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
