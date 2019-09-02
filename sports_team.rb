class SportsTeam

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end
  #
  # def set_coach(coach)
  #   @coach = coach
  # end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def check_player(player_name)
    @players.include?(player_name)
  end

  # def won_or_lost()
  #   if
  #   end
  # end

end
