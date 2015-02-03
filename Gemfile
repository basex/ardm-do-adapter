require 'pathname'

source 'https://rubygems.org'

gemspec

SOURCE         = ENV.fetch('SOURCE', :git).to_sym
REPO_POSTFIX   = SOURCE == :path ? ''                                : '.git'
DATAMAPPER     = SOURCE == :path ? Pathname(__FILE__).dirname.parent : 'http://github.com/ar-dm'
DM_VERSION     = '~> 1.2'
DO_VERSION     = '~> 0.10.6'
CURRENT_BRANCH = ENV.fetch('GIT_BRANCH', 'master')

do_options = {}
do_options[:git] = "#{DATAMAPPER}/do#{REPO_POSTFIX}" if ENV['DO_GIT'] == 'true'

gem 'data_objects', DO_VERSION, do_options.dup
gem 'ardm-core', DM_VERSION,
  SOURCE  => "#{DATAMAPPER}/ardm-core#{REPO_POSTFIX}",
  :branch => CURRENT_BRANCH

