# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-justintv/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-justintv"
  s.version     = OmniAuth::JustinTV::VERSION
  s.authors     = ["Chris Serino"]
  s.email       = ["themindoverall@gmail.com"]
  s.homepage    = "https://github.com/themindoverall/omniauth-justintv"
  s.summary     = %q{JustinTV strategy for OmniAuth.}
  s.description = %q{JustinTV strategy for OmniAuth.}

  s.files         = `git ls-files`.split("\n")
  # s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0.0'
end
