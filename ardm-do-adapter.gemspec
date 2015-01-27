# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dm-do-adapter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "ardm-do-adapter"
  gem.version       = DataMapper::DoAdapter::VERSION

  gem.authors       = [ 'Martin Emde', "Dan Kubb" ]
  gem.email         = [ 'me@martinemde.com', "dan.kubb@gmail.com" ]
  gem.summary       = 'Ardm fork of dm-do-adapter'
  gem.description   = "DataObjects Adapter for DataMapper"
  gem.homepage      = "http://datamapper.org"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec}/*`.split("\n")
  gem.extra_rdoc_files = %w[LICENSE README.rdoc]
  gem.require_paths = [ "lib" ]

  gem.add_runtime_dependency 'data_objects', '~> 0.10.6'
  gem.add_runtime_dependency 'ardm-core',    '~> 1.2'

  gem.add_development_dependency 'rake',  '~> 0.9'
  gem.add_development_dependency 'rspec', '~> 1.3'
end
