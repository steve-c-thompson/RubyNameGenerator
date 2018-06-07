require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/name_generator2'


class NameGenerator2Test < MiniTest::Test
  # test constructors
  def test_name_generator_2_constructors_function
    name_gen = NameGenerator2.new
    assert_instance_of(NameGenerator2, name_gen)
    name_gen = NameGenerator2.new([], [])
  end
  # test getting name as hash
  def test_get_hash_from_string_returns_number
    name_gen = NameGenerator2.new
    num = name_gen.get_hash_from_string("Bob")
    assert_equal(66 + 111 + 98, num)
  end

  # test getting names from default arrays
  def test_get_first_name_returns_name_from_default_array
    name_gen = NameGenerator2.new

    fn = name_gen.get_first_name("don")
    assert_instance_of(String, fn)
  end

  def test_get_last_name_returns_name_from_default_array
    name_gen = NameGenerator2.new

    fn = name_gen.get_last_name("don")
    assert_instance_of(String, fn)
  end

  # test getting name from single array returns name
  def test_get_first_name_returns_name
    name_gen = NameGenerator2.new(["first"], ["last"])

    fn = name_gen.get_first_name("don")
    assert_equal("first", fn)
  end

  def test_get_last_name_returns_name
    name_gen = NameGenerator2.new(["first"], ["last"])

    ln = name_gen.get_last_name("don")
    assert_equal("last", ln)
  end

end
