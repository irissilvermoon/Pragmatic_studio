require_relative 'player'

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
    puts @players

    @players.each do |play_name|
      play_name.w00t
      puts play_name
    end
  end
end
