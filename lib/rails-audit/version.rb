module RailsAudit
  class Version
    MAJOR = 0
    MINOR = 51
    PATCH = 0

    def self.to_s
      "#{MAJOR}.#{MINOR}.#{PATCH}"
    end
  end
end
