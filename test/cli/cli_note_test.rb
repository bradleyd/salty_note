require_relative "../test_helper"

class CLINoteTest < MiniTest::Test
  def setup
    #DATA_STORE = SaltyNote::DataStore.new(file: "./test/support/test.store")
  end

  def test_note_all_returns_notes
    assert_output(/content/) { 
      SaltyNote::CLI.start %w{ note all }
    }
  end

  def test_note_find
    assert_output(/content/) {
      SaltyNote::CLI.start %w{ note find 2 }
    }
  end

  def test_add_note
    assert_output("note added\n") {
      SaltyNote::CLI.start ['note', 'add', 'this is a test note for you']
    }
  end
  
  def test_remove_note
    assert_output("note removed") {
      SaltyNote::CLI.start %w{ note remove 2 }
    }
  end
end
