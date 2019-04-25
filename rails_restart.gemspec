# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_restart/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_restart"
  spec.version       = RailsRestart::VERSION
  spec.authors       = ["Mikhail Melnyk"]
  spec.email         = ["m1kh41l.melnyk@gmail.com"]

  spec.summary       = %q{Gem for restart rails application.}
  spec.description   = %q{Gem for restart rails application.}
  spec.homepage      = "https://github.com/sOM2H/rails_restart"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
