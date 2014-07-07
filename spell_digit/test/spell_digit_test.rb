require '../lib/spell_digit.rb'
require 'test/unit'


class TestSpell_digit < Test::Unit::TestCase
 def hello
 assertion true
end
 

  def test_one
   assert_equal "NINE HUNDRED",Spell_digit.convert(900)
   assert_equal "FIFTY",Spell_digit.convert(50)
  end
end
