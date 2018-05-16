module RailsAudit
  module Audits
    class BundlerAudit < RailsAudit::Audit
      COMMAND = 'bundle-audit'.freeze
      RAILS = false
    end
  end
end
