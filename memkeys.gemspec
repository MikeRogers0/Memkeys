# -*- encoding: utf-8 -*-
require File.expand_path('../lib/memkeys/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'memkeys'
  s.version     = Memkeys::VERSION

  s.date        = '2016-02-04'
  s.description = 'Lists keys currently listed in memcache'
  s.summary     = s.description
  s.authors     = ['Mike Rogers']
  s.email       = 'me@mikerogers.io'
  s.homepage    = 'https://github.com/mikerogers0/memkeys'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 2.3.0'
  s.required_rubygems_version = ">= 2.5.1"

  s.require_paths = ["lib"]
  s.executables  = ["memkeys"]  
  s.files        = `git ls-files`.split($\)

  s.add_runtime_dependency "thor", "~> 0.19"
  s.add_runtime_dependency "net-telnet", "~> 0.1"
  s.add_development_dependency "rspec", "~> 3.4"
end
