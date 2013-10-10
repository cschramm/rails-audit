require 'yaml'

module RailsAudit
  def self.load_config
    File.exist?('config/audit.yml') && YAML.load_file('config/audit.yml') || {}
  end

  def self.get_config(config, name)
    c = config[name]
    {
      rails: config['Rails'].nil? && true || config['Rails'],
      params: c && c['Parameters'] || '',
      enabled: (c.nil? || c['Enabled'].nil?) && true || c['Enabled']
    }
  end

  def self.run
    config = load_config

    concurrency = config['Concurrency'].nil? && true || config['Concurrency']

    failures = concurrency && run_threads(config) || run_sequence(config)

    if failures.any?
      puts 'Failed tests:'
      failures.each { |f| puts f }
    end

    failures.none?
  end

  def self.run_sequence(config)
    failures = []

    Audits::ALL.each do |audit|
      success = audit.run get_config(config, audit.get_name)
      failures << audit.get_name unless success
    end

    failures
  end

  def self.run_threads(config)
    failures = []
    mutex = Mutex.new

    threads = Audits::ALL.map do |audit|
      Thread.new do
        success = audit.run get_config(config, audit.get_name)
        mutex.synchronize { failures << audit.get_name unless success }
      end
    end

    threads.each { |t| t.join }

    failures
  end
end
