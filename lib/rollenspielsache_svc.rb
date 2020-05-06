# frozen_string_literal: true

require_relative 'rollenspielsache_svc/version'

require 'librollenspielsache'

# Service coordination for Rollenspielesache applications
module RollenspielsacheSvc
  class Error < StandardError; end

  # Produces rolls from strings
  class StringRoller
    attr_reader :input
    def initialize(input)
      @input = input
    end

    def result
      puts "Rolling #{input}..."
      Rollenspielsache::Dice::Roll.from_str(input).execute.total
    end
  end
end
