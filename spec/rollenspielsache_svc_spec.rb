# frozen_string_literal: true

RSpec.describe RollenspielsacheSvc do
  it 'has a version number' do
    expect(RollenspielsacheSvc::VERSION).not_to be nil
  end

  it 'rolls a die from a string' do
    roller = RollenspielsacheSvc::StringRoller.new('2d8')
    expect { roller.result }.to output("Rolling 2d8...\n").to_stdout
  end
end
