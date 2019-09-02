require ('minitest/autorun')
require ('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @sportsteam = SportsTeam.new("Glasgow Greyskulls", ["Aaron Aaronson", "Ben Benson", "Charlie Charlieson"], "Wendy Wendyson", 0)
  end

  def test_team_name()
    assert_equal("Glasgow Greyskulls", @sportsteam.team_name())
  end

  def test_players()
    assert_equal(["Aaron Aaronson", "Ben Benson", "Charlie Charlieson"], @sportsteam.players())
  end

  def test_coach()
    assert_equal("Wendy Wendyson", @sportsteam.coach())
  end

  # def test_set_coach()
  #   @sportsteam.set_coach("Wendy Wendyson")
  #   assert_equal("Wendy Wendyson", @sportsteam.coach())
  # end

  def test_set_coach()
    @sportsteam.coach = "Wendy Wendyson"
    assert_equal("Wendy Wendyson", @sportsteam.coach())
  end

  def test_add_new_player()
    @sportsteam.add_new_player("Derek Derekson")
    assert_equal(["Aaron Aaronson", "Ben Benson", "Charlie Charlieson", "Derek Derekson"], @sportsteam.players())
  end

  def test_check_player()
    result = @sportsteam.check_player("Aaron Aaronson")
    assert_equal(result, true)
    result = @sportsteam.check_player("Eric Ericson")
    assert_equal(result, false)
  end

  # def test_won_or_lost()
  #
  #   assert_equal(1, @sportsteam.points())
  # end

end
