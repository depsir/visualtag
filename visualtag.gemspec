# -*- encoding: utf-8 -*-
require File.expand_path('../lib/visualtag/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Francesco Sacchi"]
  gem.email         = ["depsir@gmail.com"]
  gem.description   = %q{Gem to generate a visual tag}
  gem.summary       = %q{With this gem is possible to generate a visual tag, which is a subset of artoolkit marker, characterized by a 6x6 binary matrix as image}
  gem.homepage      = "https://github.com/depsir/visualtag"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "visualtag"
  gem.require_paths = ["lib"]
  gem.version       = Visualtag::VERSION

  gem.add_dependency('rasem')
end
