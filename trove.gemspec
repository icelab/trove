# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trove/version'

Gem::Specification.new do |spec|
  spec.name          = "trove"
  spec.version       = Trove::VERSION
  spec.authors       = ["query-string"]
  spec.email         = ["atimofeev@reactant.ru"]
  spec.summary       = %q{Simple wrapper for interacting with Trove (http://trove.nla.gov.au/) API}
  spec.description   = %q{API overview http://help.nla.gov.au/trove/building-with-trove/api}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
