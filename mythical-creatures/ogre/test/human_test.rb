require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/human'

class HumanTest < Minitest::Test
  def test_it_has_a_name
    human = Human.new

    assert_equal 'Jane', human.name
  end

  def test_it_does_not_notice_ogre_ititially
    human = Human.new

    assert_equal false, human.notices_ogre?
  end

  def test_human_can_be_knocked_out
    human = Human.new

    assert_equal false, human.knocked_out?
  end
end
