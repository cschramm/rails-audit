module RailsAudit
  class Version
    MAJOR = 0
    MINOR = 45
    PATCH = 0

    def self.to_s
      "#{MAJOR}.#{MINOR}.#{PATCH}"
    end
  end
end
