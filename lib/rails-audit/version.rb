module RailsAudit
  class Version
    MAJOR = 1
    MINOR = 0
    PATCH = 0

    def self.to_s
      "#{MAJOR}.#{MINOR}.#{PATCH}"
    end
  end
end
