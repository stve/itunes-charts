# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "itunes_charts/version"

Gem::Specification.new do |s|
  s.name        = "itunes-charts"
  s.version     = ITunesCharts::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Steve Agalloco"]
  s.email       = ["steve.agalloco@gmail.com"]
  s.homepage    = "https://github.com/spagalloco/itunes-charts"
  s.summary     = 'A simple rubygem to retrieve itunes charts from apple.com'
  s.description = 'A simple rubygem to retrieve itunes charts from apple.com'

  s.rubyforge_project = "itunes-charts"

  s.add_development_dependency('bundler', '~> 1.0')
  s.add_development_dependency('rake', '~> 0.8')
  s.add_development_dependency('rspec', '~> 2.5.0')
  s.add_development_dependency('yard', '~> 0.6')
  s.add_development_dependency('maruku', '~> 0.6')
  s.add_development_dependency('simplecov', '~> 0.3')
  s.add_development_dependency('webmock', '~> 1.6')
  s.add_development_dependency('vcr', '~> 1.4.0')

  s.add_runtime_dependency('faraday', '~> 0.5.4')
  s.add_runtime_dependency('nokogiri', '~> 1.4.4')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
