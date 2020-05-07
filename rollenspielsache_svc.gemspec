# frozen_string_literal: true

require_relative 'lib/rollenspielsache_svc/version'

Gem::Specification.new do |spec|
  spec.name          = 'rollenspielsache_svc'
  spec.version       = RollenspielsacheSvc::VERSION
  spec.authors       = ['Ben Lovy']
  spec.email         = ['ben@deciduously.com']

  spec.summary       = 'Backend service for librollenspielsache-rb'
  spec.description   = 'Provides a GraphQL server and Redis interface for librollenspiel types.'
  spec.homepage      = 'https://rubygems.org/gems/rollenspielsache_svc'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/deciduously/rollenspielsache_svc'
  spec.metadata['changelog_uri'] = 'https://github.com/deciduously/rollenspielsache_svc/blob/master/CHANGELOG.md'

  # spec.add_runtime_dependency 'librollenspielsache-rb', '~> 0.1', '>= 0.1.1'
  spec.add_runtime_dependency 'sinatra'
  spec.add_runtime_dependency 'sinatra-contrib'
  spec.add_runtime_dependency 'thin'

  spec.add_development_dependency 'rubocop'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
