require_relative "test_helper"

class DataStoreTest < Minitest::Test
  def setup
    @cl = SaltyNote::DataStore.new(file: "./test/support/.salty_note.store")
    @cl.create(:note, {content: 'foo'})
  end
  def test_add_an_record
    assert File.exists?("./test/support/.salty_note.store")
  end

  def test_retrieving_record
    assert @cl.find(:note, 2)
  end

  def test_remove_record
    @cl.create(:note, {content: 'this should be deleted'})
    rec = @cl.find_all(:note).last
    @cl.remove(:note, rec[:id])
    refute @cl.find(:note, rec[:id])
  end

  def test_search_record
    assert_kind_of Hash, @cl.search(:note, content: 'foo')
  end
end
