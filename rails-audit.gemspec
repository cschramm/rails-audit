# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rails-audit/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'rails-audit'
  s.version     = RailsAudit::Version.to_s
  s.platform    = Gem::Platform::RUBY
  s.author      = 'Christopher Schramm'
  s.email       = 'cschramm@shakaweb.org'
  s.homepage    = 'https://github.com/cschramm/rails-audit'
  s.description = %q{
    Runs multiple audit and review tools to ensure quality and security of
    Rails projects
  }
  s.summary     = %q{
    Runs multiple audit and review tools to ensure quality and security of
    Rails projects
  }
  s.licenses    = ['MIT']
  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)
  s.extra_rdoc_files = ['README.md']

  s.add_development_dependency 'rake'

  s.add_dependency 'bundler'

  s.add_runtime_dependency 'brakeman', '~> 2.2.0'
  s.add_runtime_dependency 'bundler-audit'
  s.add_runtime_dependency 'cane', '~> 2.6.0'
  s.add_runtime_dependency 'consistency_fail'
  s.add_runtime_dependency 'license_finder'
  s.add_runtime_dependency 'rails_best_practices', '~> 1.14.0'
  s.add_runtime_dependency 'rubocop', '0.15.0'
end
