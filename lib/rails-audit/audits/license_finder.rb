module RailsAudit
  module Audits
    class LicenseFinder < RailsAudit::Audit
      COMMAND = 'license_finder'
      RAILS = false
    end
  end
end
