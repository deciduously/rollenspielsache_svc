# frozen_string_literal: true

require 'rollenspielsache_svc/version'

require 'librollenspielsache'

# Service coordination for Rollenspielesache applications
module RollenspielsacheSvc
  include Librollenspielsache
  class Error < StandardError; end
  # Your code goes here...
  class StringRoller
    attr_reader :input
    def initialize(input)
      @input = input
    end

    def result
      puts "Rolling #{input}..."
      result = Dice::Roll.from_str(input).execute.total
      puts result
    end
  end
end
