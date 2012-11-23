# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sparechange/version"

Gem::Specification.new do |s|
  s.name        = "sparechange"
  s.version     = Sparechange::VERSION
  s.authors     = ["Michael D. Ivey"]
  s.email       = ["ivey@gweezlebur.com"]
  s.homepage    = "http://ivey.github.com/sparechange"
  s.summary     = %q{A simple command-line bookkeeping tool}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "sparechange"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency('rspec')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_development_dependency('rake', '~> 0.9.2')

  s.add_dependency('methadone', '~> 1.2.2')
  s.add_dependency('highline', '~> 1.6.1')
end
