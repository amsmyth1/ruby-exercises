gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/person'

class PersonTest < MiniTest::Test

  def test_it_has_a_name
    person = Person.new("Perseus")

    assert_equal "Perseus", person.name
  end

  def test_it_does_not_start_as_stoned
    person = Person.new("Perseus")

    assert_equal false, person.stoned?
  end 

end
