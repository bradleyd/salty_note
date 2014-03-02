require_relative "test_helper"

class DataStoreTest < Minitest::Test
  def setup
    @cl = CaptainsLog::DataStore.new(file: "./test/support/.captains_log.store")
    @cl.create(:note, {content: 'foo'})
  end
  def test_add_an_entry
    assert File.exists?("./test/support/.captains_log.store")
  end

  def test_retrieving_entry
    p fd: @cl.find(:note, 1)
    assert @cl.find(:note, 1)
  end
end
