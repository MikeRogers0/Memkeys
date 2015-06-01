# -*- encoding: utf-8 -*-
require File.expand_path('../lib/memkeys/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'memkeys'
  s.version     = Memkeys::VERSION

  s.date        = '2015-06-01'
  s.summary     = "Memcache key lister"
  s.description = "A simple hello world gem"
  s.authors     = ["Mike Rogers "]
  s.email       = 'me@mikerogers.io'
  s.homepage    = 'http://rubygems.org/gems/memkeys'
  s.license     = 'MIT'

  s.require_paths = ["lib"]
  s.executables  = ["memkeys"]  
  s.files        = `git ls-files`.split($\)
end
