module RailsAudit
  class Audit
    def self.command(rails)
      self::COMMAND
    end

    def self.run(config)
      return true unless config[:enabled] && (config[:rails] || !self::RAILS)
      system "bundle exec #{command config[:rails]} #{config[:params]}"
    end

    def self.get_name
      name.split('::')[-1]
    end
  end
end
