class GameConsolesController < ApplicationController
  before_action :set_game_console, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @game_consoles = GameConsole.all
    respond_with(@game_consoles)
  end

  def show
    respond_with(@game_console)
  end

  def new
    @game_console = GameConsole.new
    respond_with(@game_console)
  end

  def edit
  end

  def create
    @game_console = GameConsole.new(game_console_params)
    @game_console.save
    respond_with(@game_console)
  end

  def update
    @game_console.update(game_console_params)
    respond_with(@game_console)
  end

  def destroy
    @game_console.destroy
    respond_with(@game_console)
  end

  private
    def set_game_console
      @game_console = GameConsole.find(params[:id])
    end

    def game_console_params
      params.require(:game_console).permit(:name, :manufacturer, :year)
    end
end
