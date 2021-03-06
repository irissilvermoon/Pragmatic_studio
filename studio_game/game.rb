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

  def play(rounds)

    puts "there are #{@players.count} players in #{@title}:"

    @players.each do |player|
      puts player
    end

    1.upto(rounds) do |round|
      if block_given?
        break if yield
      end
      puts "\nRound #{round}:"
      @players.each do |player|
        GameTurn.take_turn(player)
      end
    end  
  end

  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
  end

  def total_points
    @players.reduce(0) do |sum, player|
      sum + player.points
    end
  end

  def print_stats
    puts "\n#{@title}'s Stats:"

    @players.sort.each do |player|
      puts "\n#{player.name}'s point totals:"

      player.each_found_treasure do |treasure|
        puts "#{treasure.points} total #{treasure.name} points"
      end

      puts "#{player.points} grand total points"
    end

    strong_players, wimpy_players = @players.partition { |player| player.strong? }

    puts "\n#{strong_players.size} strong players:"
    strong_players.each do |player|
      print_name_and_health(player)
    end

    puts "\n#{wimpy_players.size} wimpy players:"
    wimpy_players.each do |player|
      print_name_and_health(player)
    end

    puts "\n#{@title}'s High Scores:"
    @players.sort.each do |player|
      format_name = player.name.ljust(20, '.')
      puts "#{format_name} (#{player.score})"
    end

    puts "\n#{total_points} total points from treasures found"
  end
end


