require 'rails_helper'

RSpec.describe "game_consoles/show", :type => :view do
  before(:each) do
    @game_console = assign(:game_console, GameConsole.create!(
      :name => "Name",
      :manufacturer => "Manufacturer",
      :year => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Manufacturer/)
    expect(rendered).to match(/1/)
  end
end
