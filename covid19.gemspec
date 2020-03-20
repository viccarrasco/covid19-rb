# frozen_string_literal: true

require_relative 'lib/covid19/version'

Gem::Specification.new do |spec|
  spec.name          = 'covid19'
  spec.version       = Covid19::VERSION
  spec.authors       = ['Vic Carrasco']
  spec.email         = ['1703579+viccarrasco@users.noreply.github.com']

  spec.summary       = 'Fight Covid-19'
  spec.description   = 'Write a longer description or delete this line.'
  spec.homepage      = 'https://github.com/viccarrasco/covid-19'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
    spec.metadata['homepage_uri']    = spec.homepage
    spec.metadata['source_code_uri'] = spec.homepage
    spec.metadata['changelog_uri'] = 'https://github.com/viccarrasco/covid-19/blob/master/CHANGE_LOG.md'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rake', '~> 12.3.3'
  spec.add_development_dependency 'rspec'
  spec.add_dependency 'arssene'
end
