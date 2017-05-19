# -*- encoding: utf-8 -*-
require File.expand_path('../lib/vagrant-skeleton/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'vagrant-skeleton'
  s.version     = VagrantPlugins::Skeleton::VERSION
  s.authors     = ['Nicolas Rodriguez']
  s.email       = ['nicoladmin@free.fr']
  s.homepage    = 'http://github.com/jbox-web/vagrant-skeleton'
  s.summary     = %q{Skeleton provider for Vagrant.}
  s.description = %q{Skeleton provider for Vagrant.}
  s.license     = 'MIT'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec-core',         '~> 2.14.0'
  s.add_development_dependency 'rspec-expectations', '~> 2.14.0'
  s.add_development_dependency 'rspec-mocks',        '~> 2.14.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
end
