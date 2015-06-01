# -*- encoding: utf-8 -*-
#require File.expand_path('../lib/memkeys/version', __FILE__)

Gem::Specification.new do |s|
  s.date        = "2015-06-01"
  s.summary     = "Memcache key lister"
  s.description = "A simple hello world gem"
  s.authors     = ["Mike Rogers "]
  s.email       = "me@mikerogers.io"
  s.homepage    = "http://rubygems.org/gems/memkeys"
  s.license     = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = ["memkeys"]
  #gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "memkeys"
  gem.require_paths = ["lib"]
  #gem.version       = Memkeys::VERSION
end
