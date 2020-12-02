require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test
  def test_it_exists
    card = Card.new(:diamond, 'Queen', 12)

    assert_instance_of Card, card
  end

  def test_it_has_readable_attributes
    card = Card.new(:diamond, 'Queen', 12)

    assert_equal :diamond, card.suit
    assert_equal 'Queen', card.value
    assert_equal 12, card.rank
  end

  def test_it_can_have_other_attributes
    card_2 = Card.new(:heart, 'Jack', 11)

    assert_equal :heart, card_2.suit
    assert_equal 'Jack', card_2.value
    assert_equal 11, card_2.rank
  end
end
