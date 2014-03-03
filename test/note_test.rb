require_relative "test_helper"

class NoteTest < Minitest::Test
  def test_note_new_creates_a_new_note
    assert SaltyNote::Note.add(content: "this is a test note")
  end
end
