# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'latinverb_irregular_imperatives_retriever/version'

Gem::Specification.new do |spec|
  spec.name          = "latinverb_irregular_imperatives_retriever"
  spec.version       = LatinverbIrregularImperativesRetriever::VERSION
  spec.authors       = ["Steven G. Harms"]
  spec.email         = ["steven.harms@gmail.com"]
  spec.summary       = %q{Lookup imperatives from Linguistics::Latin-defined collection of irregulars}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "latinverb_irregular_verb_definition_consumer"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
