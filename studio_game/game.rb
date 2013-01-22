require_relative 'player'
require_relative 'die'
require_relative 'game_turn'

class Game

  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(p_name)
    @players << p_name
  end

  def play

    puts "there are #{@players.count} players in #{@title}:"

    @players.each do |player|
      puts player
    end

    @players.each do |player|
      GameTurn.take_turn(player)
      puts player
    end  
  end
end
