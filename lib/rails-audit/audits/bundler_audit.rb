module RailsAudit
  module Audits
    class BundlerAudit < RailsAudit::Audit
      COMMAND = 'bundle-audit'
      RAILS = false
    end
  end
end
