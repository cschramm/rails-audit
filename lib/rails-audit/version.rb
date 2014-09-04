module RailsAudit
  class Version
    MAJOR = 0
    MINOR = 31
    PATCH = 0

    def self.to_s
      "#{MAJOR}.#{MINOR}.#{PATCH}"
    end
  end
end
