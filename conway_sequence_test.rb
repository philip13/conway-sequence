require 'minitest/autorun'
require_relative './conway_sequence'

class ConwaySequenceTest < Minitest::Test
  def test_r_2_and_l_1
    assert_equal ConwaySequence.new(2).display_line(1), '2'
  end
  def test_r_1_and_l_2
    assert_equal ConwaySequence.new(1).display_line(2), '1 1'
  end

  def test_r_1_and_l_4
    assert_equal ConwaySequence.new(1).display_line(4), '1 2 1 1'
  end

  def test_r_1_and_l_11
    assert_equal ConwaySequence.new(1).display_line(11), '1 1 1 3 1 2 2 1 1 3 3 1 1 2 1 3 2 1 1 3 2 1 2 2 2 1'
  end

  def test_r_5_and_l_10
    assert_equal ConwaySequence.new(5).display_line(5), '1 3 2 1 1 5'
  end
end
