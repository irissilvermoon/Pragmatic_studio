require_relative 'player'
require_relative 'die'

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
    @players.each do |play_name|
      puts play_name
    end

    @players.each do |play_name|
      die = Die.new
      number_rolled = die.roll
      case number_rolled
      when (1..2)
        play_name.blam
        puts "#{play_name} was blammed."
      when (3..4)
        puts "#{play_name} was skipped."
      else 
        play_name.w00t
        puts "#{play_name} was w00ted!"
      end
      puts play_name
    end
  end
end
