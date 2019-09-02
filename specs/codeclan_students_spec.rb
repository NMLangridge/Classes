require ('minitest/autorun')
require ('minitest/rg')
require_relative('../codeclan_students.rb')

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Nathan", "G15")
  end

  def test_name()
    assert_equal("Nathan", @student.name())
  end

  def test_cohort()
    assert_equal("G15", @student.cohort())
  end

  def test_set_name()
    # @student.name = "Daniel"
    @student.set_name("Daniel")
    assert_equal("Daniel", @student.name())
  end

  def test_set_cohort()
    @student.set_cohort("E99")
    assert_equal("E99", @student.cohort())
  end

  def test_talk()
    assert_equal("I can talk!", @student.talk())
  end

  def test_say_favourite_language()
    assert_equal("I love Ruby", @student.say_favourite_language("Ruby"))
  end

end
