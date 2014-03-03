require "thor"
require "salty_note/note"
module SaltyNote
  module Commands
    class Note < Thor
      namespace :note

      desc "add", "new note"
      def add(str)
        result = SaltyNote::Note.add(content: str)
        if result
          say("note added", :green)
        else
          say("note not added", :red)
        end
      end

      desc "find", "find a note"
      def find(id)
        record = SaltyNote::Note.find(id)
        if record
          print_table record
        else
          say "not found", :yellow
        end
      end

      desc "all", "Return all notes"
      def all
        $stdout.puts SaltyNote::Note.all
      end

      desc "remove", "Remove a specific note"
      def remove(id=nil)
        if id
          SaltyNote::Note.remove(id)
        else
          all
          choice = ask("which note to delete?")
          SaltyNote::Note.remove(choice)
        end
        say("note removed", :green)
      end
    end
  end
end

