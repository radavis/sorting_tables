class GameConsole < ActiveRecord::Base
  validates :name, presence: true
  validates :manufacturer, presence: true
  validates :year, presence: true
  validates :year, numericality: { only_integer: true }
end
