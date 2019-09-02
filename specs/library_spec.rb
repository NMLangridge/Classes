require ('minitest/autorun')
require ('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new("Lord of the Rings")
  end

  def test_title()
    assert_equal("Lord of the Rings", @library.title())
  end

end
