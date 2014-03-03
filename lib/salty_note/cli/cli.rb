require "thor"
require "salty_note/cli/note"
module SaltyNote
  class CLI < Thor
    DATA_STORE = SaltyNote::DataStore.new(file: "/tmp/new.store")

    desc "note SUBCOMMAND", "CRUD for notes"
    subcommand "note", SaltyNote::Commands::Note
  end
end
