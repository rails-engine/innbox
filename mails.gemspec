lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mails/version'

Gem::Specification.new do |spec|
  spec.name          = "mails"
  spec.version       = Mails::VERSION
  spec.authors       = ["P.S.V.R"]
  spec.email         = ["pmq2001@gmail.com"]

  spec.summary       = %q{Mountable Personal Messaging Engine for any Rails application.}
  spec.description   = %q{Mountable Personal Messaging Engine for any Rails application.}
  spec.homepage      = "https://github.com/rails-engine/mails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", '>= 0.10.3'
  spec.add_dependency "rails", ">= 4.2.0", "< 5.1"
  spec.add_dependency 'will_paginate', '>= 3.0.0'
end
