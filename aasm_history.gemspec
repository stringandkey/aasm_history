# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aasm_history/version'

Gem::Specification.new do |spec|
  spec.name          = 'aasm_history'
  spec.version       = AasmHistory::VERSION
  spec.authors       = ['Jan Jedrychowski', 'brogoz']
  spec.email         = ['hello@infiniteloop.eu']
  spec.summary       = %q{Track and persist AASM state history}
  spec.homepage      = 'https://github.com/infiniteloopeu/aasm_history'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.0.0' # due to Module#prepend

  spec.add_dependency 'aasm', '~> 5.4'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'activerecord', '~> 4.1'
  spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.9'

end
