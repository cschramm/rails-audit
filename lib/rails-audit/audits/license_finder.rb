module RailsAudit
  module Audits
    class LicenseFinder < RailsAudit::Audit
      COMMAND = 'license_finder'.freeze
      RAILS = false
    end
  end
end
