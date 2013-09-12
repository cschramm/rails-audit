[![Gem Version](https://badge.fury.io/rb/rails-audit.png)](http://badge.fury.io/rb/rails-audit)

# Rails Audit

Runs multiple audit and review tools to ensure quality and security of
Rails projects

## Usage

    gem install rails-audit
    rails-audit

## Audits

Additional parameters can be passed to any audit's binary by using an .audit.yml
file. A configuration for cane could look like the following:

    Cane:
      Parameters: '--style-measure 120 --no-doc'

The audits' names are camel cased in the configuration file. They may be
disabled like this:

    BundleAudit:
      Enabled: false

Rails support may be disabled. Only pure Ruby audits are then executed:

    Rails: false

To improve output to the expense of time concurreny can be disabled:

    Concurrency: false

### [Brakeman](http://brakemanscanner.org/)

Brakeman is a security scanner for Rails.

### [bundler-audit](https://github.com/rubysec/bundler-audit)

bundler-audit checks Gemfile.lock for any insecure gem versions.

### [Cane](https://github.com/square/cane)

Cane is a code quality checker. Configuration is done by parameters.

### [Consistency Fail](https://github.com/trptcolin/consistency_fail)

Consistency Fail detects missing unique indexes in Rails projects.

### [License Finder](https://github.com/pivotal/LicenseFinder)

License Finder checks Gemfiles for any dependencies with unapproved licenses.
Approval and whitelisting is done through the license\_finder binary.

### [rails\_best\_practices](https://github.com/railsbp/rails_best_practices)

rails\_best\_practices checks code for violations of the [Rails Best Practices list](http://rails-bestpractices.com/). Configuration is done in the rails\_best\_practices.yml file, which can be generated using `rails_best_practices -g`.

### [Rubocop](https://github.com/bbatsov/rubocop)

Rubocop checks code for violations of the [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide). Configuration is done in the .rubocop.yml file.
Rails cops are included automatically depending on whether or not Rails audits
are enabled.
