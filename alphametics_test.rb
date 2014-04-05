$LOAD_PATH << '.'

require 'test/unit'
require 'alphametics'

class TestAlphametics < Test::Unit::TestCase
  include Alphametics

  def test_out
    assert_equal solve('TO + GO == OUT'), '21 + 81 == 102'
  end

  def test_too
    assert_equal solve('I + DID == TOO'), '9 + 191 == 200'
  end

  def test_mom
    assert_equal solve('AS + A == MOM'), '92 + 9 == 101'
  end

  def test_best
    assert_equal solve('HES + THE == BEST'), '426 + 842 == 1268'
  end

  def test_late
    assert_equal solve('NO + NO + TOO == LATE'), '74 + 74 + 944 == 1092'
  end

  def test_onze
    assert_equal solve('UN + UN + NEUF == ONZE'), '81 + 81 + 1987 == 2149'
  end

  def test_deux
    assert_equal solve('UN + DEUX + DEUX + DEUX + DEUX == NEUF'),
                 '25 + 1326 + 1326 + 1326 + 1326 == 5329'
  end
end
