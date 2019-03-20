require 'yaml'

module RailsAudit
  class Runner
    def initialize
      @config = { 'Concurrency' => true, 'Rails' => true }
      return unless File.exist? 'config/audit.yml'

      @config = @config.merge YAML.load_file('config/audit.yml')
    end

    def get_config(name)
      defaults = { 'Parameters' => '', 'Enabled' => true }
      config = defaults.merge(@config[name] || {})
      {
        rails: @config['Rails'],
        params: config['Parameters'],
        enabled: config['Enabled']
      }
    end

    def run
      concurrency = @config['Concurrency']

      failures = concurrency && run_threads || run_sequence

      if failures.any?
        puts 'Failed tests:'
        failures.each { |f| puts f }
      end

      failures.none?
    end

    def run_sequence
      failures = []

      Audits::ALL.each do |audit|
        success = audit.run get_config(audit.name)
        failures << audit.name unless success
      end

      failures
    end

    def run_threads
      failures = []
      mutex = Mutex.new

      threads = Audits::ALL.map do |audit|
        Thread.new do
          success = audit.run get_config(audit.name)
          mutex.synchronize { failures << audit.name unless success }
        end
      end

      threads.each(&:join)

      failures
    end
  end
end
