require_relative "test_helper"

class NoteTest < Minitest::Test
  def test_note_new_creates_a_new_note
    SaltyNote::Note.add("this is a test note")
    note = SaltyNote::Note.fetch(1)
    assert_equal(note, "this is a test note")
  end
end
