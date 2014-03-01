# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'taut/coffee/version'

Gem::Specification.new do |spec|
  spec.name          = "taut-coffee"
  spec.version       = Taut::Coffee::VERSION
  spec.authors       = ["Phillip Ridlen"]
  spec.email         = ["phillip@ovenbits.com"]
  spec.summary       = %q{Get good coffee/water ratios}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/philtr/taut-coffee"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "taut", ">= 0"
  spec.add_dependency "multi_json", ">= 1.8"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
