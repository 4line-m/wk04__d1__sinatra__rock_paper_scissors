require 'minitest/autorun'
require_relative '../models/game.rb'

class TestGame < Minitest::Test

  def setup
    @game_1 = Game.new('paper', 'paper')
    @game_2 = Game.new('scissors', 'paper')
    @game_3 = Game.new('paper', 'rock')
    @game_4 = Game.new('rock', 'scissors')

  end

  def test_draw()
    assert_equal("Draw! Try again.", @game_1.throw())
  end

  def test_scissor()
    assert_equal("Scissors beats paper!", @game_2.throw())
  end

  def test_paper()
    assert_equal("Paper beats rock!", @game_3.throw())
  end

  def test_rock()
    assert_equal("Rock beats scissors!", @game_4.throw())
  end

end
