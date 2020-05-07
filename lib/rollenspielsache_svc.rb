# frozen_string_literal: true

require_relative 'rollenspielsache_svc/version'

require 'librollenspielsache'

# Service coordination for Rollenspielesache applications
module RollenspielsacheSvc
  class Error < StandardError; end

  # Produces rolls from strings
  class StringRoller
    attr_reader :roll
    def initialize(input)
      @roll = Rollenspielsache::Dice::Roll.from_str(input)
    end

    def result
      puts "Rolling #{roll}..."
      result = roll.execute
      result.to_json
    end
  end
end
