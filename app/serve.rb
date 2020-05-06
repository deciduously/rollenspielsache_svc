# frozen_string_literal: true

# The server itself
require 'sinatra'

require_relative '../lib/rollenspielsache_svc'

get '/' do
  'Congrats, you\'re on Rollenspielsache'
end

get '/roll/:input' do
  input = params['input']
  roller = RollenspielsacheSvc::StringRoller.new(input)
  "Rolling #{input}...#{roller.result}"
end
