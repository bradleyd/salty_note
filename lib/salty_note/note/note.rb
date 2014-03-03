require "salty_note/data_store"

module SaltyNote
  class Note

    def self.add(args)
     CLI::DATA_STORE.create(:note, args)
    end

    def self.find(id)
      CLI::DATA_STORE.find(:note, id)
    end
    
    def self.all
      CLI::DATA_STORE.find_all(:note)
    end

    def self.remove(id)
      CLI::DATA_STORE.remove(:note, id)
    end
  end
end
