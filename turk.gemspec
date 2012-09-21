# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'turk/version'

Gem::Specification.new do |gem|
  gem.name          = "turk"
  gem.version       = Turk::VERSION
  gem.authors       = ["charles jekal"]
  gem.email         = ["no.thx@gmail.com"]
  gem.description   = %q{simplifies MTurk}
  gem.summary       = %q{simplifies MTurk}
  gem.homepage      = "https://github.com/cjekal/turk"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^rspec/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency('rest-client', '>= 1.6.7')
end
