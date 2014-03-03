require "pstore"
module SaltyNote
  class DataStore
    def initialize(args={})
      @file  = args.fetch(:file) { File.join(ENV["HOME"], ".captains_log.store") } 
      @store = PStore.new(@file) 
    end

    # create entry in pstore
    # @param [String, Symbol] type of entry
    # @example 
    #   :note
    #   :task
    # @param [Hash] args 
    def create(type, args)
      # increment id
      id = next_id(type)
      @store.transaction do
        @store[type.to_sym] = [] unless @store[type.to_sym]
        @store[type.to_sym] << args.merge(id: id, created_at: Time.now)
      end
    end

    def find(type, id)
      transaction do
        return "not found" if @store[type.to_sym].nil?
        @store[type.to_sym].find { |i| i[:id] == id }
      end
    end

    def find_all(type)
      transaction do
        @store[type.to_sym]
      end
    end

    def remove(type, id)
      transaction do
         record = @store[type.to_sym].find {|i| i[:id] == id.to_i }
         @store[type.to_sym].delete(record)
      end
    end

    def search(type, args)
      transaction do
        @store[type.to_sym].find { |i| i[args.keys.first.to_sym] == args.values.first }
      end
    end

    def last_id(type)
      @store.transaction do
        if @store[type.to_sym] && @store[type.to_sym].count > 0
          @store[type.to_sym].last[:id]
        else
          1
        end
      end
    end

    def next_id(type)
      last_id(type).to_i.next
    end

    def transaction 
      @store.transaction do
        yield
      end
    end
  end
  
end
