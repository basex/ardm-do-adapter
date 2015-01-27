# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dm-do-adapter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "dm-do-adapter"
  gem.version       = DataMapper::DoAdapter::VERSION

  gem.authors       = [ "Dan Kubb" ]
  gem.email         = [ "dan.kubb@gmail.com" ]
  gem.summary       = "DataObjects Adapter for DataMapper"
  gem.description   = gem.summary
  gem.homepage      = "http://datamapper.org"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec}/*`.split("\n")
  gem.extra_rdoc_files = %w[LICENSE README.rdoc]
  gem.require_paths = [ "lib" ]

  gem.add_runtime_dependency 'data_objects', '~> 0.10.6'
  gem.add_runtime_dependency 'dm-core',      '~> 1.2'

  gem.add_development_dependency 'rake',  '~> 0.9.2'
  gem.add_development_dependency 'rspec', '~> 1.3.2'
end
