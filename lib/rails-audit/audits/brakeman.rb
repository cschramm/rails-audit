module RailsAudit
  module Audits
    class Brakeman < RailsAudit::Audit
      COMMAND = 'brakeman -z'
      RAILS = true
    end
  end
end
