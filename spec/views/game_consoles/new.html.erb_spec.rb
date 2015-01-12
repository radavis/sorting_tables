require 'rails_helper'

RSpec.describe "game_consoles/new", :type => :view do
  before(:each) do
    assign(:game_console, GameConsole.new(
      :name => "MyString",
      :manufacturer => "MyString",
      :year => 1
    ))
  end

  it "renders new game_console form" do
    render

    assert_select "form[action=?][method=?]", game_consoles_path, "post" do

      assert_select "input#game_console_name[name=?]", "game_console[name]"

      assert_select "input#game_console_manufacturer[name=?]", "game_console[manufacturer]"

      assert_select "input#game_console_year[name=?]", "game_console[year]"
    end
  end
end
