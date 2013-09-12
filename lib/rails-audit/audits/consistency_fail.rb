module RailsAudit
  module Audits
    class ConsistencyFail < RailsAudit::Audit
      COMMAND = 'consistency_fail'
      RAILS = true
    end
  end
end
