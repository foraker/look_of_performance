# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'look_of_performance/version'

Gem::Specification.new do |spec|
  spec.name          = "look_of_performance"
  spec.version       = LookOfPerformance::VERSION
  spec.authors       = ["Jon Evans"]
  spec.email         = ["jle@foraker.com"]
  spec.summary       = %q{Shame yourself into better performance.}
  spec.description   = %q{Be scolded with looks of disapproval when your app is slow.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.0"

  spec.add_dependency "activesupport", "> 3"
end
