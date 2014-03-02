require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "captains_log"

module CaptainsLog
  module TestHelpers
    def self.current_user
      `whoami`.strip
    end

    def self.home
      ENV["HOME"]
    end
  end
end
