module RailsAudit
  class Audit
    def self.command(_rails)
      self::COMMAND
    end

    def self.run(config)
      return true unless config[:enabled] && (config[:rails] || !self::RAILS)
      system "bundle exec #{command config[:rails]} #{config[:params]}"
    end

    def self.name
      super.split('::')[-1]
    end
  end
end
