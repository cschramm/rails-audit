require File.expand_path('lib/rails-audit/version', __dir__)

Gem::Specification.new do |s|
  s.name        = 'rails-audit'
  s.version     = RailsAudit::Version.to_s
  s.platform    = Gem::Platform::RUBY
  s.author      = 'Christopher Schramm'
  s.email       = 'rails-audit@cschramm.eu'
  s.homepage    = 'https://github.com/cschramm/rails-audit'
  s.description = %(
    Runs multiple audit and review tools to ensure quality and security of
    Rails projects
  )
  s.summary     = s.description
  s.licenses    = ['MIT']
  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map do |f|
    File.basename(f)
  end
  s.require_paths = %w[lib]
  s.extra_rdoc_files = ['README.md']

  s.add_development_dependency 'rake'

  s.add_dependency 'bundler'

  s.add_runtime_dependency 'brakeman', '~> 4.5.0'
  s.add_runtime_dependency 'bundler-audit'
  s.add_runtime_dependency 'cane', '~> 3.0.0'
  s.add_runtime_dependency 'consistency_fail'
  s.add_runtime_dependency 'license_finder'
  s.add_runtime_dependency 'rails_best_practices', '~> 1.19.4'
  s.add_runtime_dependency 'rubocop', '~> 0.66.0'
end
